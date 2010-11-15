# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:08 espie Exp $

COMMENT =	remote svn repository dump
CATEGORIES =	devel

DISTNAME =	rsvndump-0.5.2

HOMEPAGE =	http://rsvndump.sourceforge.net/

MASTER_SITES =  ${MASTER_SITE_SOURCEFORGE:=rsvndump/}

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c apr-1 \
		svn_client-1 svn_delta-1 svn_fs-1 svn_ra-1 svn_subr-1
MODULES =	devel/gettext

LIB_DEPENDS =	subversion->=1.4:devel/subversion

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
