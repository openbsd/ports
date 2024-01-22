V =		2.3.2
COMMENT =	CSNOBOL4 suite including interpreter, debugger and utilities
DISTNAME =	snobol4-${V}
CATEGORIES =	lang

HOMEPAGE =	https://www.regressive.org/snobol4/csnobol4/
MAINTAINER =	STeve Andre <steve@wb8wsf.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto ffi m readline sqlite3 ssl util z

SITES =		https://ftp.regressive.org/snobol4/ \
		https://ftp.regressive.org/snobol4/old/

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
