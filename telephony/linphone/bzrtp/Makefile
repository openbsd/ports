# $OpenBSD: Makefile,v 1.1.1.1 2021/07/10 12:03:20 landry Exp $

COMMENT =	implementation of ZRTP keys exchange protocol

V =		4.5.15
MODULE =	bzrtp

SHARED_LIBS +=  bzrtp 0.0 # 15

CONFIGURE_ARGS =-DENABLE_STATIC=NO \
		-DENABLE_TESTS=NO \
		-DENABLE_DOC=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox \
		databases/sqlite3 \
		textproc/libxml
WANTLIB += bctoolbox sqlite3 xml2

.include <bsd.port.mk>
