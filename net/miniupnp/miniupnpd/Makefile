COMMENT=	UPnP IGD daemon

DISTNAME=	miniupnpd-2.3.5

# uses pledge()
WANTLIB += c crypto kvm ssl

MAKE_FLAGS=	INSTALLETCDIR=${PREFIX}/share/examples/miniupnpd

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

CONFIGURE_STYLE= simple
TEST_TARGET=	check

post-install:
	${SUBST_DATA} ${WRKBUILD}/miniupnpd.8 \
			${PREFIX}/man/man8/miniupnpd.8

.include <bsd.port.mk>
