# $OpenBSD: Makefile,v 1.14 2015/02/16 22:57:09 naddy Exp $

COMMENT=	remote IMAP filtering utility

DISTNAME=	imapfilter-2.2.3
REVISION=	2
CATEGORIES=	mail

HOMEPAGE=	http://imapfilter.hellug.gr/

MASTER_SITES=	http://spacehopper.org/mirrors/ \
		https://github.com/downloads/lefcha/imapfilter/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m ssl pcre ${MODLUA_WANTLIB}

MODULES=	lang/lua
MODLUA_SA=	Yes

LIB_DEPENDS=	devel/pcre \
		${MODLUA_LIB_DEPENDS}

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	-p ${PREFIX} \
		-b ${PREFIX}/bin \
		-s ${PREFIX}/share/imapfilter \
		-m ${PREFIX}/man \
		-o ssltls=yes -o crammd5=yes
MAKE_ENV+=	CC="${CC}"

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imapfilter
	${INSTALL_DATA} ${WRKSRC}/samples/{config,extend}.lua \
		${PREFIX}/share/examples/imapfilter/

.include <bsd.port.mk>
