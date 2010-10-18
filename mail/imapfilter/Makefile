# $OpenBSD: Makefile,v 1.6 2010/10/18 19:59:16 espie Exp $

COMMENT=	remote IMAP filtering utility

DISTNAME=	imapfilter-2.0.10
CATEGORIES=	mail

HOMEPAGE=	http://imapfilter.hellug.gr/

MASTER_SITES=	${HOMEPAGE}source/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c crypto m ssl

LIB_DEPENDS=	pcre::devel/pcre \
		lua::lang/lua

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	-p ${PREFIX} \
		-b ${PREFIX}/bin \
		-s ${PREFIX}/share/imapfilter \
		-m ${PREFIX}/man \
		-o ssltls=yes -o crammd5=yes
MAKE_ENV+=	CC="${CC}"
USE_GROFF =	Yes

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imapfilter
	${INSTALL_DATA} ${WRKSRC}/sample.{config,extend}.lua \
		${PREFIX}/share/examples/imapfilter

.include <bsd.port.mk>
