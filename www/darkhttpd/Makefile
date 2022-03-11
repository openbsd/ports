COMMENT=	simple and small webserver intended for ad-hoc usage

CATEGORIES=	www
GH_ACCOUNT=	emikulic
GH_PROJECT=	darkhttpd
GH_TAGNAME=	v1.13

HOMEPAGE=	https://unix4lyfe.org/darkhttpd/

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/darkhttpd ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/darkhttpd/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/darkhttpd/README

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
