# New ports collection makefile for:    apache HTTPD
# Version required:     1.3b3
# Date created:         17 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.6 1998/12/16 22:40:29 marc Exp $
#

DISTNAME=       apache_1.3b5
PKGNAME=	apache-1.3b5
CATEGORIES=	www

COMES_WITH=	2.3
MIRROR_DISTFILE=no

MASTER_SITES=   ftp://www.apache.org/apache/dist/

# Official apache patches
#	put in patches/ since they are pathless
#
#PATCH_SITES=	ftp://www.apache.org/apache/dist/patches/apply_to_1.3b5/
#PATCHFILES=	PR1847.patch PR1850.patch PR1889.patch
#.if defined(PATCH_DEBUG)
#PATCH_DIST_ARGS=-d ${WRKSRC}/src -E ${PATCH_STRIP}
#.else
#PATCH_DIST_ARGS=-d ${WRKSRC}/src --forward --quiet -E ${PATCH_DIST_STRIP}
#.endif

MAINTAINER=	ports@OpenBSD.ORG

# Set it for local-supplied patch, f.e.
# VERS_ID = mods-1.0/me

.if defined(VERS_ID)
post-patch:
	@cd ${WRKSRC}/src && \
	mv Configuration Configuration.old && \
	sed 's;^#*OPTIM=.*;OPTIM= -DSERVER_SUBVERSION=\\"${VERS_ID}\\";' \
	< Configuration.old > Configuration
.endif

post-install:
	@$(ECHO) ""
	@$(ECHO) "*** To complete the installation of $(DISTNAME)"
	@$(ECHO) "*** you should modify the file /etc/rc.local to start"
	@$(ECHO) "*** ${PREFIX}/sbin/httpd at system startup."
	@$(ECHO) "*** See the rc(8) manual page for more information."
	@$(ECHO) ""

.include <bsd.port.mk>
