# $OpenBSD: Makefile,v 1.16 2017/07/27 10:05:20 sthen Exp $

BROKEN-sparc64=	gcj blows during build
COMMENT=	pdf swiss army knife
VERSION=	2.02
REVISION=	3
DISTNAME=	pdftk-$(VERSION)
EXTRACT_SUFX=	-src.zip
CATEGORIES=	textproc

MAINTAINER=	Christopher Zimmermann <chrisz@openbsd.org>

# GPLv2+ (main program), see ${WRKDIST}/license_gpl_pdftk/ for libraries
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODGCC4_GCJWANTLIB} c iconv m pthread z

HOMEPAGE =	http://www.pdflabs.com/tools/pdftk-server/

MASTER_SITES =	http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/

# one of the only remaining direct users of gcc4, because it requires
# a C++ compiler that can talk to the gcj runtime, and pdftk itself is 
# firmly tied to gcj.
MODULES =	gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS=	java c++

LIB_DEPENDS=	${MODGCC4_GCJLIBDEP} \
		converters/libiconv

WRKDIST=	${WRKDIR}/$(DISTNAME)-dist
WRKSRC=		$(WRKDIST)/pdftk

USE_GMAKE=	Yes
MAKE_FILE=	Makefile.Base

GCJ?=		gcj
GCJH?=		gcjh
GJAR?=		gjar

CONFIG=		$(MACHINE_ARCH)-unknown-openbsd$(OSREV)
GCJFLAGS?=	${CXXFLAGS}
CPPFLAGS+=	-fdollars-in-identifiers \
		-DPATH_DELIM=0x2f \
		-DASK_ABOUT_WARNINGS=false \
		-DUNBLOCK_SIGNALS
CXXFLAGS+=	-L$(LOCALBASE)/lib
LDLIBS+=	-lgcj -liconv -lz -pthread

MAKE_ENV+=	CXX="$(CXX)" \
		GCJ="$(GCJ)" \
		GCJH="$(GCJH)" \
		GJAR="$(GJAR)" \
		AR="$(AR)" \
		RM=rm \
		GCJFLAGS="$(GCJFLAGS)" \
		CPPFLAGS="$(CPPFLAGS)" \
		CXXFLAGS="$(CXXFLAGS)" \
		ARFLAGS="${ARFLAGS} rs" \
		LDLIBS="$(LDLIBS)"

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/pdftk $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKDIST)/pdftk.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
