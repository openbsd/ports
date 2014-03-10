# $OpenBSD: Makefile,v 1.9 2014/03/10 20:27:25 landry Exp $

COMMENT=	pdf swiss army knife
VERSION=	2.02
REVISION=	0
DISTNAME=	pdftk-$(VERSION)
EXTRACT_SUFX=	-src.zip
CATEGORIES=	textproc

MAINTAINER=	Christopher Zimmermann <madroach@zakweb.de>

# GPLv2+ (main program), see ${WRKDIST}/license_gpl_pdftk/ for libraries
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODGCC4_GCJWANTLIB} c m pthread z

HOMEPAGE =	http://www.pdflabs.com/tools/pdftk-server/

MASTER_SITES =	http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/

MODULES=	converters/libiconv gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	java c++
LIB_DEPENDS=	${MODGCC4_GCJLIBDEP}

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
		-DUNBLOCK_SIGNALS \
		-I$(LOCALBASE)/include/c++/4.2.4 \
		-I$(LOCALBASE)/lib/gcc/$(CONFIG)/4.2.4/include
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
