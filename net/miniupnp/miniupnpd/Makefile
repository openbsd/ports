COMMENT=	UPnP IGD daemon

## this block can be removed when moving back to a proper release
GH_ACCOUNT=	miniupnp
GH_PROJECT=	miniupnp
GH_COMMIT=	1cdf9ba7447ef409566740e7b74081970378cf18
WRKDIST=	${WRKDIR}/miniupnp-${GH_COMMIT}/miniupnpd
##

DISTNAME=	miniupnpd-2.3.0pl20220601
REVISION=	0

# uses pledge()
WANTLIB += c crypto kvm ssl

MAKE_FLAGS=	INSTALLETCDIR=${PREFIX}/share/examples/miniupnpd

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

CONFIGURE_STYLE=	simple

post-install:
	${SUBST_DATA} ${WRKBUILD}/miniupnpd.8 \
			${PREFIX}/man/man8/miniupnpd.8

.include <bsd.port.mk>
