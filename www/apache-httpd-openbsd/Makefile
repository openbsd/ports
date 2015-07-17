# $OpenBSD: Makefile,v 1.10 2015/07/17 23:58:25 ajacoutot Exp $

COMMENT=	OpenBSD improved and secured version of Apache 1.3

DISTNAME=	apache-httpd-openbsd-1.3.20140502
REVISION=	4
CATEGORIES=	www

HOMEPAGE=	https://github.com/fobser/apache-httpd-openbsd

# Apache 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m pthread ssl

MASTER_SITES=	http://sha256.net/apache-httpd-openbsd/

NO_TEST=	Yes

MAKE_FILE=	Makefile.bsd-wrapper
MAKE_FLAGS=	MANDIR=${PREFIX}/man/man

RUN_DEPENDS=	www/apache-httpd,-common

do-configure:
	@${SUBST_CMD} ${WRKSRC}/config.layout ${WRKSRC}/Makefile.bsd-wrapper

post-install:
.for i in httpd.conf mime.types magic
	mv ${WRKINST}/var/www/conf/$i{,.default}
.endfor
# remove conflicts with www/apache-httpd
	rm -rf ${WRKINST}/var/www/{cgi-bin,icons}

.include <bsd.port.mk>
