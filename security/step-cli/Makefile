BROKEN-i386=	../../../go/pkg/mod/github.com/newrelic/go-agent/v3@v3.39.0/internal/utilization/utilization.go:216:25: undefined: sysinfo.PhysicalMemoryBytes

# XXX there are some problems with this port which seem to be related to
# removing direct syscalls; to replicate: "step base64"; makeRaw from
# golang.org/x/term fails. however, enough features do work that this
# is probably still worth shipping.

COMMENT =	swiss army knife for working with X509, OAuth, JWT, OATH OTP

V =		0.28.7
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

	env HOME=${WRKDIR} ${WRKDIR}/go/bin/step completion bash > \
	    ${PREFIX}/share/bash-completion/completions/step
	env HOME=${WRKDIR} ${WRKDIR}/go/bin/step completion zsh > \
	    ${PREFIX}/share/zsh/site-functions/_step
	env HOME=${WRKDIR} ${WRKDIR}/go/bin/step completion fish > \
	    ${PREFIX}/share/fish/vendor_completions.d/step.fish

.include "modules.inc"
.include <bsd.port.mk>
