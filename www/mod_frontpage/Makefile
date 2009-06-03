# $OpenBSD: Makefile,v 1.19 2009/06/03 00:48:51 pyr Exp $

COMMENT=	Microsoft FrontPage Server extensions for Apache

ONLY_FOR_ARCHS=	i386

VERSION=	1.6.2
DISTNAME=	mod_frontpage_mirfak-${VERSION}
PKGNAME=	mod_frontpage-${VERSION}p3
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mirfak/}

HOMEPAGE=	http://mirfak.sourceforge.net

MODULES+=	apache-module

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

SEPARATE_BUILD=	concurrent

MODAPACHE_NAME=	frontpage

APXS=		/usr/sbin/apxs
CC!=		${APXS} -q CC
CFLAGS!=	${APXS} -q CFLAGS
INCLUDES!=	${APXS} -q INCLUDEDIR

DEF=	-DFPEXEC_BIN=\\\"/usr/local/sbin/fpexec\\\" \
	-DFPSTATIC_BIN=\\\"/usr/local/sbin/fpstatic\\\"

DEF2=	-DFP_HTTPD_USER=\"www\" -DFP_UID_MIN=1000 -DFP_GID_MIN=1000 \
	-DFP_LOG_EXEC=\"/var/log/fpexec_log\" \
	-DFP_USERDIR_SUFFIX=\"public_html\" \
	-DFP_DOC_ROOT=\"/var/www/htdocs\" \
	-DFP_SAFE_PATH=\"/usr/bin:/bin:/usr/local/bin\" \
	-DFPDIR=\"/usr/local/frontpage/version5.0/exes\" \
	-DFPBASE=\"/usr/local/frontpage/version5.0\" \
	-DFP_USER=\"bin\" -DFP_GROUP=\"bin\" \
	-DFP_HTACCESS=\".htaccess\" -DFP_UMASK=022

INC=	-I/usr/lib/apache/include

do-build:
	cd ${WRKBUILD} && \
	    ${APXS} -Wall -c ${DEF} ${DEF2} ${INC} \
	       -o ${WRKBUILD}/mod_frontpage.so ${WRKSRC}/mod_frontpage.c
	${CC} ${CFLAGS} ${DEF2} ${INC} -o ${WRKBUILD}/fpexec ${WRKSRC}/fpexec.c
	${CC} ${CFLAGS} ${DEF2} ${INC} \
	    -o ${WRKBUILD}/fpstatic ${WRKSRC}/fpstatic.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fpexec ${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKBUILD}/fpstatic ${PREFIX}/sbin/
	@chown root:www ${PREFIX}/sbin/fpexec ${PREFIX}/sbin/fpstatic
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
