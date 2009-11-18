# $OpenBSD: Makefile,v 1.1.1.1 2009/11/18 19:19:47 jasper Exp $

COMMENT=		Markdown implementation for PHP

DISTNAME=		php-markdown-1.0.1n
CATEGORIES=		www

HOMEPAGE=		http://michelf.com/projects/php-markdown/

# modified BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://michelf.com/docs/projets/
EXTRACT_SUFX=		.zip

NO_BUILD=       	Yes
NO_REGRESS=     	Yes
PKG_ARCH=       	*

# Although this library is not PEAR, installing it into
# ${PREFIX}/pear/lib will make sure it's picked up by PHP
# without the need to adjust the include path in php.ini
PREFIX=                 /var/www
INSTDIR=                ${PREFIX}/pear/lib/
SUBST_VARS=             INSTDIR

WRKSRC= 		${WRKDIR}/PHP\ Markdown\ 1.0.1n/

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_DATA} ${WRKSRC}/markdown.php ${INSTDIR}


.include <bsd.port.mk>
