BROKEN-i386 = ../../../go/pkg/mod/github.com/newrelic/go-agent/v3@v3.18.0/internal/utilization/utilization.go:214:25: undefined: sysinfo.PhysicalMemoryBytes
BROKEN-aarch64 = ../../../go/pkg/mod/github.com/newrelic/go-agent/v3@v3.18.0/internal/utilization/utilization.go:214:25: undefined: sysinfo.PhysicalMemoryBytes

COMMENT =	swiss army knife for working with X509, OAuth, JWT, OATH OTP

V =		0.24.4
MODGO_MODNAME =	github.com/smallstep/cli
MODGO_VERSION =	v${V}
DISTNAME =	step-cli-${V}

CATEGORIES =	security

HOMEPAGE =	https://smallstep.com/cli

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

MODGO_LDFLAGS +=	-X "main.Version=${V}"

post-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/share/bash-completion/completions \
	    ${PREFIX}/share/zsh/site-functions \
	    ${PREFIX}/share/fish/vendor_completions.d

	${WRKDIR}/go/bin/step completion bash > \
	    ${PREFIX}/share/bash-completion/completions/step
	${WRKDIR}/go/bin/step completion zsh > \
	    ${PREFIX}/share/zsh/site-functions/_step
	${WRKDIR}/go/bin/step completion fish > \
	    ${PREFIX}/share/fish/vendor_completions.d/step.fish

.include "modules.inc"
.include <bsd.port.mk>
