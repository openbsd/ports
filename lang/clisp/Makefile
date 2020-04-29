# $OpenBSD: Makefile,v 1.54 2020/04/29 19:04:02 gkoehler Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc sparc64

COMMENT =		ANSI Common Lisp implementation

DISTNAME=		clisp-2.49
REVISION =		5
CATEGORIES=		lang
HOMEPAGE=		http://clisp.cons.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  avcall c callback iconv intl m curses readline sigsegv

LIB_DEPENDS =		devel/gettext,-runtime \
			devel/libsigsegv \
			devel/ffcall>=1.10p1

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clisp/}
EXTRACT_SUFX=		.tar.bz2

USE_GMAKE=		Yes

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS=		--fsstnd=openbsd \
			--disable-mmap \
			--with-gettext \
			--mandir=${PREFIX}/man \
			--docdir=${PREFIX}/share/doc/clisp \
			--elispdir=${PREFIX}/share/emacs/site-lisp \
			--vimdir=${PREFIX}/share/doc/clisp \
			--srcdir=${WRKSRC} ${WRKBUILD} \
			--without-dynamic-modules

# Override some mmap, shm tests: their fixed addresses may conflict
# with ASLR, and a random 'no' might break the build.
CONFIGURE_ENV =		ac_cv_prog_DVIPDF='' \
			ac_cv_prog_GROFF='' \
			ac_cv_prog_PS2PDF='' \
			cl_cv_func_mmap_anon=yes \
			cl_cv_func_mmap_anonymous=yes \
			cl_cv_func_mmap_devzero=yes \
			cl_cv_func_mmap_works=yes \
			cl_cv_func_shmctl_attachable=yes \
			cl_cv_sys_shm_works=yes

.if ${MACHINE_ARCH} == "sparc64"
CFLAGS +=		-DSAFETY=2 -DNO_ASM
.endif

.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--with-gmalloc
CFLAGS +=		-fno-pie -nopie
LDFLAGS +=		-nopie
.else
CONFIGURE_ARGS +=	--without-gmalloc
.endif

pre-build:
	ln -sf ${LOCALBASE}/bin/gmake ${WRKDIR}/bin/make

.include <bsd.port.mk>
