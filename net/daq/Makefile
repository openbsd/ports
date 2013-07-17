# $OpenBSD: Makefile,v 1.7 2013/07/17 18:18:05 lteo Exp $

COMMENT =	data acquisition library for snort

DISTNAME =	daq-2.0.0
REVISION =	1

SHARED_LIBS +=		daq		1.0 # 2.0
SHARED_LIBS +=		sfbpf		0.0 # 0.1

CATEGORIES =	net

HOMEPAGE =	http://www.snort.org/

MAINTAINER =	Markus Lude <markus.lude@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		pcap

MASTER_SITES =		http://www.snort.org/dl/snort-current/


SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-ipv6

BUILD_DEPENDS =		devel/bison

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/daq
	${INSTALL_DATA} ${WRKSRC}/{ChangeLog,README} ${PREFIX}/share/doc/daq

.include <bsd.port.mk>
