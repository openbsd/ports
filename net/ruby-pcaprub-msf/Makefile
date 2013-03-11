# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:56 espie Exp $

COMMENT =		Ruby interface to LBL pcap library (Metasploit fork)

DISTNAME =		pcaprub-msf-r7343
PKGNAME =		pcaprub-msf-7343
REVISION =		5
CATEGORIES =		net
EXTRACT_SUFX =		.tgz

MAINTAINER =		Stephan A. Rickauer <stephan@openbsd.org>

HOMEPAGE =		http://www.metasploit.com/redmine/projects/framework/repository/show/external/pcaprub
MASTER_SITES =		http://distfiles.nl/

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/pcaprub-msf
WANTLIB =		pcap 
MODULES =		lang/ruby
CONFIGURE_STYLE =	ruby extconf

.include <bsd.port.mk>
