# $OpenBSD: Makefile,v 1.11 2003/02/23 22:36:36 danh Exp $

COMMENT=	"Microsoft FrontPage Server extensions for Apache"

ONLY_FOR_ARCHS=	i386

VERSION=	1.6.2
DISTNAME=	mod_frontpage_mirfak-${VERSION}
PKGNAME=	mod_frontpage-${VERSION}
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mirfak/}

HOMEPAGE=	http://mirfak.sourceforge.net

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent

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
	-DFPBASE=\"/usr/local/frontpage/version5.0/exes\" \
	-DFP_USER=\"bin\" -DFP_GROUP=\"bin\" \
	-DFP_HTACCESS=\".htaccess\" -DFP_UMASK=022

INC=	-I/usr/lib/apache/include

do-build:
	cd ${WRKBUILD} && \
	    ${APXS} -Wall -c ${DEF} ${INC} \
	       -o ${WRKBUILD}/mod_frontpage.so ${WRKSRC}/mod_frontpage.c
	${CC} ${CFLAGS} ${DEF2} ${INC} -o ${WRKBUILD}/fpexec ${WRKSRC}/fpexec.c
	${CC} ${CFLAGS} ${DEF2} ${INC} \
	    -o ${WRKBUILD}/fpstatic ${WRKSRC}/fpstatic.c
	@sed 's,!!PREFIX!!,${PREFIX},' ${FILESDIR}/mod_frontpage-enable > \
	    ${WRKBUILD}/mod_frontpage-enable

do-install:
	${INSTALL_DATA} ${WRKBUILD}/mod_frontpage.so ${PREFIX}/lib/
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_frontpage-enable ${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKBUILD}/fpexec ${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKBUILD}/fpstatic ${PREFIX}/sbin/
	@chown root:www ${PREFIX}/sbin/fpexec ${PREFIX}/sbin/fpstatic

.include <bsd.port.mk>
