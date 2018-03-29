# $OpenBSD: Makefile,v 1.117 2018/03/29 19:33:18 robert Exp $

USE_WXNEEDED=	Yes

COMMENT=	cross platform, open source .NET developement framework

V=		5.10.0.160
DISTNAME=	mono-${V}

CATEGORIES=	lang devel

SHARED_LIBS +=  mono-2.0		0.0	# .0.0
SHARED_LIBS +=  monoboehm-2.0           1.0     # .0.0
SHARED_LIBS +=  monosgen-2.0            0.0	# .1.0
SHARED_LIBS +=  mono-profiler-aot	1.0	# .0.0
SHARED_LIBS +=  mono-profiler-coverage	0.0	# .0.0
SHARED_LIBS +=  mono-profiler-log	0.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv2, LGPL, MIT X11, MPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c iconv m pthread z

MASTER_SITES=	https://download.mono-project.com/sources/mono/
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/mono \
		lang/python

MODMONO_DEPS=	No

USE_GMAKE=	Yes

SUBST_VARS=	LIBTOOL

BUILD_DEPENDS=	devel/bison \
		devel/gettext-tools \
		devel/cmake \
		lang/gawk \
		shells/bash \
		${RUN_DEPENDS}
RUN_DEPENDS=	x11/libgdiplus

LIB_DEPENDS=	converters/libiconv

TEST_DEPENDS=	lang/python/${MODPY_VERSION}

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.15

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		ac_cv_header_execinfo_h=no \
		ac_cv_header_pthread_np_h=yes

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+=	CFLAGS="-march=i586"
.endif

CONFIGURE_ARGS=	--with-gc=included \
		--with-tls=pthread \
		--enable-btls \
		--disable-quiet-build \
		--disable-shared-handles \
		--without-sigaltstack

TEST_TARGET=check

DLLMAP_FILES=	mcs/class/System.Windows.Forms/System.Windows.Forms/MimeIcon.cs \
		mcs/tools/mono-shlib-cop/mono-shlib-cop.exe.config \
		mcs/class/System/System.IO/FAMWatcher.cs \
		mcs/class/System.Windows.Forms/System.Windows.Forms/X11DesktopColors.cs \
		mcs/class/Mono.Cairo/Samples/gtk/OldAndBusted.cs \
		data/config

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

pre-configure:
	${SUBST_CMD} ${WRKSRC}/runtime/mono-wrapper.in \
		${WRKSRC}/runtime/monodis-wrapper.in
	sed -i -e 's,^prefix=.*,prefix=\@prefix\@,g;' \
		-e 's,^exec_prefix=.*,exec_prefix=\@prefix\@,g' \
		${WRKSRC}/data/*.pc.in
	sed -i -e 's,/usr/bin/env python,${MODPY_BIN},g' \
		${WRKSRC}/mono/tests/gc-descriptors/gen-descriptor-tests.py


	@ln -fs /usr/local/bin/bash ${WRKDIR}/bin/bash
	@ln -fs /usr/local/bin/gawk ${WRKDIR}/bin/gawk
	@ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

# Force using the internal mcs compiler
pre-build:
	@mkdir -p ${WRKSRC}/mcs/build/deps
	@touch ${WRKSRC}/mcs/build/deps/use-monolite

# XXX stop mono failing the first time
# make _tmpinst more available
post-build:
	for i in ${WRKBUILD}/runtime/_tmpinst/bin/*; do \
		ln -fs $$i ${WRKDIR}/bin; \
	done

.include <bsd.port.mk>
