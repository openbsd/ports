# $OpenBSD: Makefile,v 1.7 2012/09/23 16:57:35 jeremy Exp $

COMMENT =		Ruby interface to LBL pcap library (Metasploit fork)

DISTNAME =		pcaprub-msf-r7343
PKGNAME =		pcaprub-msf-7343
REVISION =		4
CATEGORIES =		net
EXTRACT_SUFX =		.tgz

MAINTAINER =		Stephan A. Rickauer <stephan@openbsd.org>

HOMEPAGE =		http://www.metasploit.com/redmine/projects/framework/repository/show/external/pcaprub
MASTER_SITES =		http://distfiles.nl/

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WRKDIST =		${WRKDIR}/pcaprub-msf
WANTLIB =		pcap 
MODULES =		lang/ruby
CONFIGURE_STYLE =	ruby extconf

.include <bsd.port.mk>
