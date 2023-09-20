COMMENT-runtime=	GNU gettext runtime libraries and programs
COMMENT-textstyle=	text styling library
COMMENT-tools=		GNU gettext development and translation tools

VERSION=		0.22.2
DISTNAME=		gettext-${VERSION}
PKGNAME-textstyle=	libtextstyle-${VERSION}

SHARED_LIBS +=  intl                 8.0      # 12.0
SHARED_LIBS +=  asprintf             3.0      # unknown
SHARED_LIBS +=  textstyle            0.2      # 2.1
SHARED_LIBS +=  gettextlib           13.0     # unknown
SHARED_LIBS +=  gettextsrc           10.0     # unknown
SHARED_LIBS +=  gettextpo            12.0     # 5.10

SUBST_VARS=	VERSION

CATEGORIES=	devel
# DPB: parallel-safe, not worth it. Too much time in configure

SITES=		${SITE_GNU:=gettext/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.gnu.org/software/gettext/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv2.1, GPLv3
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-runtime -textstyle -tools
SUBPACKAGE?=	-runtime

WANTLIB-runtime=	c iconv m ${COMPILER_LIBCXX}
WANTLIB-textstyle=	curses iconv m
WANTLIB-tools=		c curses iconv intl m textstyle

LIB_DEPENDS=		converters/libiconv
LIB_DEPENDS-tools=	${BASE_PKGPATH},-runtime \
			${BASE_PKGPATH},-textstyle

RUN_DEPENDS-tools=	archivers/xz

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# on critical path to lang/gcc.  XXX c++ used in libasprintf but seems
# unused at present; may need to revisit if this changes
COMPILER =		base-clang base-gcc

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-csharp \
		--disable-java \
		--disable-acl \
		--disable-openmp \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-included-gettext \
		--with-included-libunistring \
		--with-included-libxml \
		--without-emacs \
		--without-git

# GCC on alpha has an optimization bug, which cause problems with gnulib's
# mmalloca function. Disable alloca to work around the failing code.
.if ${MACHINE_ARCH} == "alpha"
CONFIGURE_ENV+=	ac_cv_func_alloca_works=no
.endif

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build-aux \
				${WRKSRC}/libtextstyle/build-aux

EXTRA_LOCALES=	en he lv no
# only in gettext-tools
EXTRA_LOCALES+=	eu pa

post-install:
	for l in ${EXTRA_LOCALES}; do \
		${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$$l/LC_MESSAGES; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	for f in start-po.el po-mode.el po-compat.el; do \
		${INSTALL_DATA} ${WRKSRC}/gettext-tools/emacs/$$f \
			${PREFIX}/share/emacs/site-lisp; \
	done

.include <bsd.port.mk>
