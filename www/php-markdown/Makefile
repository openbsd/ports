# $OpenBSD: Makefile,v 1.9 2019/07/12 21:02:28 sthen Exp $

COMMENT=		Markdown implementation for PHP

V =			1.6.0
DISTNAME =		php-markdown-lib-$V
PKGNAME =		${DISTNAME:S/-lib//}
REVISION =		0
CATEGORIES=		www

HOMEPAGE =		https://michelf.ca/projets/php-markdown/

# modified BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://littoral.michelf.ca/code/php-markdown/
EXTRACT_SUFX=		.zip

NO_BUILD=       	Yes
NO_TEST=     		Yes
PKG_ARCH=       	*

# Although this library is not PEAR, installing it into
# ${PREFIX}/pear/lib will make sure it's picked up by PHP
# without the need to adjust the include path in php.ini
PREFIX=			${VARBASE}/www
INSTDIR=                ${PREFIX}/pear/lib/
SUBST_VARS=             INSTDIR

WRKSRC= 		${WRKDIR}/PHP\ Markdown\ Lib\ ${V}

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_DATA} ${WRKSRC}/Michelf/*.php ${INSTDIR}


.include <bsd.port.mk>
