COMMENT =		define and run multi-container applications with Docker

MODGO_MODNAME =		github.com/docker/compose/v2
MODGO_VERSION =		v2.31.0
DISTNAME =		docker-compose-${MODGO_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://docs.docker.com/compose/

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
MODGO_LDFLAGS =		-X ${MODGO_MODNAME}/internal.Version=${MODGO_VERSION}

do-install:
	ln -s ${TRUEPREFIX}/libexec/docker/cli-plugins/docker-compose \
		${PREFIX}/bin/docker-compose
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/docker/cli-plugins
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/cmd \
		${PREFIX}/libexec/docker/cli-plugins/docker-compose

do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} ./...

# for patches; remove when no longer needed
WRKDIST =		${WRKSRC}

.include "modules.inc"
# github.com/docker/buildx v0.18.0 requires patches
# See: https://github.com/docker/compose/issues/12339
MODGO_MODULES +=	github.com/docker/buildx 							 v0.19.1 \
			github.com/moby/buildkit							 v0.18.0 \
			go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp			 v0.53.0 \
			go.opentelemetry.io/otel							 v1.28.0 \
			go.opentelemetry.io/otel/exporters/otlp/otlptrace				 v1.28.0 \
			go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp			 v1.28.0 \
			go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc			 v1.28.0 \
			go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp		 v0.44.0 \
			go.opentelemetry.io/otel/metric							 v1.28.0 \
			go.opentelemetry.io/otel/sdk							 v1.28.0 \
			go.opentelemetry.io/otel/sdk/metric						 v1.28.0 \
			go.opentelemetry.io/otel/trace							 v1.28.0 \
			go.opentelemetry.io/proto/otlp							 v1.3.1 \
			github.com/cenkalti/backoff/v4							 v4.3.0 \
			github.com/containerd/continuity						 v0.4.5 \
			github.com/containerd/typeurl/v2						 v2.2.3 \
			github.com/go-logr/logr								 v1.4.2 \
			github.com/grpc-ecosystem/grpc-gateway/v2					 v2.20.0 \
			github.com/prometheus/client_golang						 v1.20.2 \
			github.com/prometheus/client_model						 v0.6.1 \
			github.com/prometheus/common							 v0.55.0 \
			github.com/tonistiigi/fsutil							 v0.0.0-20241121093142-31cf1f437184

.include <bsd.port.mk>
