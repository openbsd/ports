# $OpenBSD: Makefile,v 1.5 2004/11/17 22:11:12 itojun Exp $

COMMENT=	"mh-e like mail user agent"

DISTNAME=	cue-snap-20041025
PKGNAME=	cue-20041025
CATEGORIES=	mail

MASTER_SITES=	ftp://sh.wide.ad.jp/WIDE/free-ware/cue/snap/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-ipv6 \
			--without-canna \
			--with-openssl=/usr \
			--disable-pgpmime

MAKE_FLAGS=		CC='${CC}'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cue ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cue
	${INSTALL_DATA} ${WRKSRC}/sample.cuerc ${PREFIX}/share/examples/cue
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cue
	${INSTALL_DATA} ${WRKSRC}/cue.hlp  ${PREFIX}/share/doc/cue

.include <bsd.port.mk>
