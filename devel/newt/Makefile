# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:12 espie Exp $

COMMENT=		programming library for color text mode, widget based UIs

VERSION=		0.52.14
DISTNAME=		newt-${VERSION}
REVISION=0
SHARED_LIBS +=  newt                      0.0 # 0.52
CATEGORIES=		devel

HOMEPAGE=		https://fedorahosted.org/newt/

MASTER_SITES=		https://fedorahosted.org/releases/n/e/newt/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		devel/gettext \
			lang/python

LIB_DEPENDS=		devel/libslang \
			devel/popt

WANTLIB += c m ncurses popt pthread slang util termcap ${MODPY_WANTLIB}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-tcl \
			--with-python
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm -ltermcap -lintl -liconv"

MAKE_FLAGS=		MAKE_PROGRAM=${MAKE_PROGRAM}

NO_TEST=		Yes

SUBST_VARS+=		VERSION

pre-configure:
	perl -pi -e 's,^(SONAME=).*,SONAME=${LIBnewt_VERSION},g;' \
		-e 's,PYTHONVERS=.*,PYTHONVERS=python${MODPY_VERSION},g' ${WRKSRC}/configure

pre-install:
	${SUBST_CMD} -c ${FILESDIR}/setup.py ${WRKSRC}/setup.py
	cd ${WRKSRC} && ${MAKE_ENV} ${MODPY_BIN} setup.py install --prefix=${PREFIX}

.include <bsd.port.mk>
