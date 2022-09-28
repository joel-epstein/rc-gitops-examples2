package v2

import (
	core "envoyproxy.io/api/v2/core"
	endpoint "envoyproxy.io/api/v2/endpoint"
)

// Different Envoy instances may have different capabilities (e.g. Redis)
// and/or have ports enabled for different protocols.
#Capability_Protocol: "HTTP" | "TCP" | "REDIS"

Capability_Protocol_HTTP:  "HTTP"
Capability_Protocol_TCP:   "TCP"
Capability_Protocol_REDIS: "REDIS"

// Defines supported protocols etc, so the management server can assign proper
// endpoints to healthcheck.
#Capability: {
	health_check_protocols?: [...#Capability_Protocol]
}

#HealthCheckRequest: {
	node?:       core.#Node
	capability?: #Capability
}

#EndpointHealth: {
	endpoint?:      endpoint.#Endpoint
	health_status?: core.#HealthStatus
}

#EndpointHealthResponse: {
	endpoints_health?: [...#EndpointHealth]
}

#HealthCheckRequestOrEndpointHealthResponse: {
	health_check_request?:     #HealthCheckRequest
	endpoint_health_response?: #EndpointHealthResponse
}

#LocalityEndpoints: {
	locality?: core.#Locality
	endpoints?: [...endpoint.#Endpoint]
}

// The cluster name and locality is provided to Envoy for the endpoints that it
// health checks to support statistics reporting, logging and debugging by the
// Envoy instance (outside of HDS). For maximum usefulness, it should match the
// same cluster structure as that provided by EDS.
#ClusterHealthCheck: {
	cluster_name?: string
	health_checks?: [...core.#HealthCheck]
	locality_endpoints?: [...#LocalityEndpoints]
}

#HealthCheckSpecifier: {
	cluster_health_checks?: [...#ClusterHealthCheck]
	// The default is 1 second.
	interval?: string
}

// HealthDiscoveryServiceClient is the client API for HealthDiscoveryService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
#HealthDiscoveryServiceClient: _

#HealthDiscoveryService_StreamHealthCheckClient: _

// HealthDiscoveryServiceServer is the server API for HealthDiscoveryService service.
#HealthDiscoveryServiceServer: _

// UnimplementedHealthDiscoveryServiceServer can be embedded to have forward compatible implementations.
#UnimplementedHealthDiscoveryServiceServer: {
}

#HealthDiscoveryService_StreamHealthCheckServer: _
