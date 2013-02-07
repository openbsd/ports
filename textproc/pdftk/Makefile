# $OpenBSD: Makefile,v 1.6 2013/02/07 19:13:49 ajacoutot Exp $

COMMENT=	pdf swiss army knife
VERSION=	1.44
REVISION=	1
DISTNAME=	pdftk-$(VERSION)
EXTRACT_SUFX=	-src.zip
CATEGORIES=	textproc

MAINTAINER=	Christopher Zimmermann <madroach@zakweb.de>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ${MODGCC4_GCJWANTLIB} c m pthread z

MASTER_SITES=	http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/

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
