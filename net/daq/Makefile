# $OpenBSD: Makefile,v 1.3 2013/01/16 04:48:39 lteo Exp $

COMMENT =	data acquisition library for snort

DISTNAME =	daq-2.0.0

SHARED_LIBS +=		daq		1.0 # 2.0
SHARED_LIBS +=		sfbpf		0.0 # 0.1

CATEGORIES =	net

HOMEPAGE =	http://www.snort.org/

MAINTAINER =	Markus Lude <markus.lude@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		pcap

MASTER_SITES =		http://www.snort.org/dl/snort-current/

USE_LIBTOOL =		Yes

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-ipv6

BUILD_DEPENDS =		devel/bison

.include <bsd.port.mk>
