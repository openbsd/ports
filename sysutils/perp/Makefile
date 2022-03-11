COMMENT=        process supervisor & service framework for unix
V=              2.07
DISTNAME=       perp-${V}
CATEGORIES=     sysutils

HOMEPAGE=       http://b0llix.net/perp/
MAINTAINER=     Jan-Piet Mens <ports@jpmens.net>

# License free to use http://b0llix.net/perp/site.cgi?page=LICENSE
PERMIT_PACKAGE= Yes

WANTLIB += c

MASTER_SITES=   http://b0llix.net/perp/distfiles/

CFLAGS+=        -I. -I../lasagna
CFLAGS+=        -DPERP_BASE_DEFAULT='\"${SYSCONFDIR}/perp\"'

MAKE_FLAGS=     CC="${CC}" CFLAGS="${CFLAGS}"
MAKE_FLAGS+=    BINDIR="${TRUEPREFIX}/bin" \
                SBINDIR="${TRUEPREFIX}/sbin" \
                MANDIR="${TRUEPREFIX}/man"

.ifndef DEBUG
pre-install:
	cd ${WRKSRC} && ${MAKE} strip
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/perp
	cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/perp/

.include <bsd.port.mk>
