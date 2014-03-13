# $OpenBSD: Makefile,v 1.1.1.1 2014/03/13 17:28:04 sthen Exp $

COMMENT=	OpenBSD improved and secured version of Apache 1.3

DISTNAME=	apache-httpd-openbsd-1.3p54
PKGNAME=	apache-httpd-openbsd-1.3
REVISION=	54
CATEGORIES=	www

HOMEPAGE=	http://sha256.net/apache-httpd-openbsd/

# Apache 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m pthread ssl

MASTER_SITES=	${HOMEPAGE}

NO_TEST=	Yes

MAKE_FILE=	Makefile.bsd-wrapper
MAKE_FLAGS=	MANDIR=${PREFIX}/man/man

do-configure:
	@${SUBST_CMD} ${WRKSRC}/config.layout ${WRKSRC}/Makefile.bsd-wrapper

post-install:
.for i in httpd.conf mime.types magic
	mv ${WRKINST}/var/www/conf/$i{,.default}
.endfor

.include <bsd.port.mk>
