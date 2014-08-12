# $OpenBSD: Makefile,v 1.10 2014/08/12 03:00:16 lteo Exp $

COMMENT =	data acquisition library for snort

DISTNAME =	daq-2.0.2

SHARED_LIBS +=		daq		2.0 # 2.2
SHARED_LIBS +=		sfbpf		1.0 # 0.1

CATEGORIES =	net

HOMEPAGE =	http://www.snort.org/

MAINTAINER =	Markus Lude <markus.lude@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		pcap

MASTER_SITES =		https://www.snort.org/downloads/snort/


SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-ipv6

BUILD_DEPENDS =		devel/bison

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/daq
	${INSTALL_DATA} ${WRKSRC}/{ChangeLog,README} ${PREFIX}/share/doc/daq

.include <bsd.port.mk>
