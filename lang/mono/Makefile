# $OpenBSD: Makefile,v 1.82 2014/07/12 16:24:20 robert Exp $

COMMENT=	cross platform, open source .NET developement framework

DISTNAME=	mono-3.4.0

CATEGORIES=	lang devel

SHARED_LIBS +=  mono-2.0		1.0	# .0.0
SHARED_LIBS +=  monoboehm-2.0           1.0     # .0.0
SHARED_LIBS +=  mono-profiler-iomap	0.0	# .0.0
SHARED_LIBS +=  mono-profiler-aot	1.0	# .0.0
SHARED_LIBS +=  mono-profiler-log	0.0	# .0.0
SHARED_LIBS +=  mono-profiler-cov	1.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv2, LGPL, MIT X11, MPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread z stdc++

MASTER_SITES=	http://download.mono-project.com/sources/mono/ \
		http://ftp.novell.com/pub/mono/sources/mono/
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/mono \
		lang/python \
		converters/libiconv

MODMONO_DEPS=	No

USE_GMAKE=	Yes
USE_GROFF =	Yes

SUBST_VARS=	LIBTOOL

BUILD_DEPENDS=	devel/bison \
		lang/gawk \
		shells/bash \
		${RUN_DEPENDS}
RUN_DEPENDS=	x11/libgdiplus

TEST_DEPENDS=	lang/python/${MODPY_VERSION}

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		ac_cv_header_execinfo_h=no

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+=	CFLAGS="-march=i586"
.endif

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gc=included \
		--with-sgen=no \
		--enable-quiet-build=no \
		--disable-shared-handles

TEST_TARGET=check

DLLMAP_FILES=	mcs/class/Managed.Windows.Forms/System.Windows.Forms/MimeIcon.cs \
		mcs/tools/mono-shlib-cop/mono-shlib-cop.exe.config \
		mcs/class/System/System.IO/FAMWatcher.cs \
		mcs/class/Managed.Windows.Forms/System.Windows.Forms/X11DesktopColors.cs \
		mcs/class/Mono.Cairo/Samples/gtk/OldAndBusted.cs \
		data/config

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

post-patch:
	@cd ${WRKSRC}/eglib && \
		${SETENV} ${AUTOCONF_ENV} ${AUTOCONF} && \
		${SETENV} ${AUTOCONF_ENV} ${AUTOHEADER}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/runtime/mono-wrapper.in \
		${WRKSRC}/runtime/monodis-wrapper.in
	perl -pi -e 's,^prefix=.*,prefix=\@prefix\@,g;' \
		-e 's,^exec_prefix=.*,exec_prefix=\@prefix\@,g' \
		${WRKSRC}/data/*.pc.in
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' \
		mono/tests/gc-descriptors/gen-descriptor-tests.py


	@ln -fs /usr/local/bin/bash ${WRKDIR}/bin/bash
	@ln -fs /usr/local/bin/gawk ${WRKDIR}/bin/gawk

# Force using the internal mcs compiler
pre-build:
	@mkdir -p ${WRKSRC}/mcs/build/deps
	@touch ${WRKSRC}/mcs/build/deps/use-monolite

# XXX stop mono failing the first time
# make _tmpinst more available
post-build:
	for i in ${WRKBUILD}/runtime/_tmpinst/bin/*; do \
		ln -s $$i ${WRKDIR}/bin; \
	done

.include <bsd.port.mk>
