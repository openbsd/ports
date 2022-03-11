V =		2.2.1
COMMENT =	CSNOBOL4 suite including interpreter, debugger and utilities
DISTNAME =	snobol4-${V}
CATEGORIES =	lang

HOMEPAGE =	http://www.snobol4.org/csnobol4/curr/
MAINTAINER =	STeve Andre <steve@wb8wsf.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto ffi m readline sqlite3 ssl util z

MASTER_SITES =	ftp://ftp.snobol4.org/snobol/ \
		ftp://ftp.snobol4.org/snobol/old/

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	databases/sqlite3 \
		devel/libffi

# --opt isn't strictly necessary but its value is recorded in the binary.
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix="${PREFIX}" \
			--opt="${CFLAGS}"

# Reduce PLIST churn at update time.
FAKE_FLAGS =	DOC_DIR="${DESTDIR}${PREFIX}/share/doc/snobol4"

SUBST_VARS +=	V

.include <bsd.port.mk>
