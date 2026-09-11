COMMENT=	COBOL compiler, formerly known as OpenCOBOL

DISTNAME =	gnucobol-3.2
REVISION =	2

SHARED_LIBS +=	cob	6.0	# 6.0

CATEGORIES =	lang

HOMEPAGE =	https://gnucobol.sourceforge.io/

# compiler: GPLv3+
# run-time library: LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c cjson curses db gmp iconv intl m pthread xml2
WANTLIB += z

SITES =		${SITE_GNU:=gnucobol/}

LIB_DEPENDS =	databases/db/v4 \
		devel/gettext,-runtime \
		devel/gmp \
		devel/cjson \
		textproc/libxml

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --with-db \
		--with-json=cjson \
		--with-xml2

CONFIGURE_ENV =	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

# generated texinfo files are included in tarballs, but something is off
# with timestamps so the build infrastructure tries to regenerate. use the
# provided touch target to avoid this.
post-configure:
	chmod +x ${WRKSRC}/doc/cobcinfo.sh
	${MAKE_PROGRAM} -C ${WRKSRC}/doc touch

# if actually regenerating, we need newer texinfo than is in base, i.e.
# use the following lines, however some _newer_ versions choke on them too.
#CONFIGURE_ENV +=	MAKEINFO=gmakeinfo
#BUILD_DEPENDS =	print/texinfo

.include <bsd.port.mk>
