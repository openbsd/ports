# $OpenBSD: Makefile,v 1.13 2009/06/03 00:48:51 pyr Exp $

COMMENT=	transparently compress Apache output

V=		1.3.26.1a
DISTNAME=	mod_gzip-${V}
PKGNAME=	${DISTNAME}p3
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mod-gzip/}
EXTRACT_SUFX=   .tgz

HOMEPAGE=	http://www.schroepl.net/projekte/mod_gzip/

MODULES+=	apache-module

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODAPACHE_NAME=	gzip

SUBST_VARS=	PKGNAME
NO_REGRESS=	Yes

HTML_DOCS=	browser.htm cache.htm config.htm encoding.htm \
		enhancements.htm extern.gif firewalls.htm index.htm \
		links.htm mod_gzip_logo.gif status.htm valid-css.png \
		valid-xhtml11.png versions.htm

do-build:
	cd ${WRKSRC} && /usr/sbin/apxs -Wc,"${CFLAGS}" -c mod_gzip.c \
		mod_gzip_debug.c mod_gzip_compress.c -o ${WRKBUILD}/mod_gzip.so
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_gzip
	${INSTALL_DATA} ${WRKSRC}/docs/mod_gzip.conf.sample \
		${PREFIX}/share/examples/mod_gzip
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_gzip
.for i in ${HTML_DOCS}
	${INSTALL_DATA} ${WRKSRC}/docs/manual/english/${i} \
		${PREFIX}/share/doc/mod_gzip
.endfor
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
