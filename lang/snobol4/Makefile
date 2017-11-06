# $OpenBSD: Makefile,v 1.1.1.1 2017/11/06 08:14:14 bcallah Exp $

COMMENT =	CSNOBOL4 suite including interpreter, debugger and utilities
DISTNAME =	snobol4-2.0
CATEGORIES =	lang

HOMEPAGE =	http://www.snobol4.org/csnobol4/curr/
MAINTAINER =	STeve Andre <andres@msu.edu>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ffi m ncurses readline sqlite3 util

MASTER_SITES =	ftp://ftp.snobol4.org/snobol/

LIB_DEPENDS =	databases/sqlite3 \
		devel/libffi

# --opt isn't strictly necessary but its value is recorded in the binary.
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix="${PREFIX}" \
			--opt="${CFLAGS}"

# Reduce PLIST churn at update time.
FAKE_FLAGS =	DOC_DIR="${DESTDIR}${PREFIX}/share/doc/snobol4"

.include <bsd.port.mk>
