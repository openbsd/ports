# $OpenBSD: Makefile,v 1.6 2012/05/01 20:37:41 naddy Exp $

COMMENT =	remote svn repository dump
CATEGORIES =	devel

DISTNAME =	rsvndump-0.5.2
REVISION=	1

HOMEPAGE =	http://rsvndump.sourceforge.net/

MASTER_SITES =  ${MASTER_SITE_SOURCEFORGE:=rsvndump/}

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c apr-1 pthread \
		svn_client-1 svn_delta-1 svn_fs-1 svn_ra-1 svn_subr-1
MODULES =	devel/gettext

LIB_DEPENDS =	devel/subversion>=1.4

AUTOCONF_VERSION =	2.63
CONFIGURE_STYLE =	autoconf

.include <bsd.port.mk>
