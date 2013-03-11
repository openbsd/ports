# $OpenBSD: Makefile,v 1.22 2013/03/11 11:44:43 espie Exp $

COMMENT=	Web intrusion detection and prevention engine

VER=		1.9.3
REVISION=	5
DISTNAME=	modsecurity-apache_${VER}
PKGNAME=	modsecurity-apache-${VER}

CATEGORIES=	www

MASTER_SITES=	http://www.modsecurity.org/download/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=mod-security/}

HOMEPAGE=	http://www.modsecurity.org/

MODULES+=	apache-module

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MODAPACHE_NAME=	security

NO_TEST=	Yes

DOCS=	CHANGES INSTALL LICENSE README doc/modsecurity-manual.pdf
SUBST_VARS=	PKGNAME

do-build:
	cd ${WRKSRC}/apache1 && /usr/sbin/apxs -Wc,"${CFLAGS}" -c \
		mod_security.c -o ${WRKBUILD}/mod_security.so
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_security
	${INSTALL_DATA} ${WRKSRC}/httpd.conf.example-* \
		${PREFIX}/share/examples/mod_security
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_security
.for i in ${DOCS}
	 ${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/mod_security
.endfor
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
