# $OpenBSD: Makefile,v 1.2 2002/03/12 09:03:42 mark Exp $
# Original from A B <obsdfaq30@yahoo.com>

COMMENT=	"GNU editor: extensible, customizable, self documenting"

VERSION=	21.1
DISTNAME=	emacs-${VERSION}
CATEGORIES=	editors
NEED_VERSION=	1.509
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= emacs

MAINTAINER=	Mark Grimes <mark@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	GCCARCH VERSION

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${GCCARCH}
CONFIGURE_ENV= CPPFLAGS="-I${LOCALBASE}/include" \
	       LDFLAGS="-L${LOCALBASE}/lib"

# X11 flavors
FLAVORS=	no_x11 no_tiff no_png no_jpeg x11
# X toolkit styles
FLAVORS+=	athena lucid motif
# Misc options
FLAVORS+=	pop kerberos kerberos5 hesiod
# Default
FLAVOR?=	x11

M_ARCH=		${MACHINE_ARCH}

GCCARCH=	${M_ARCH}-unknown-openbsd${OPSYS_VER}

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x --without-jpeg --without-png \
	--without-tiff --without-xim
.else

USE_X11=Yes
CONFIGURE_ARGS+= --with-x

.if ${FLAVOR:L:Mno_jpeg}
CONFIGURE_ARGS+= --without-jpeg
.endif

.if ${FLAVOR:L:Mno_png}
CONFIGURE_ARGS+= --without-png
.endif 

.if ${FLAVOR:L:Mno_tiff}
CONFIGURE_ARGS+= --without-tiff
.endif

.if ${FLAVOR:L:Mpop}
CONFIGURE_ARGS+= --with-pop
.endif 

.if ${FLAVOR:L:Mkerberos}
CONFIGURE_ARGS+= --with-kerberos
.endif 

.if ${FLAVOR:L:Mkerberos5}
CONFIGURE_ARGS+= --with-kerberos5
.endif

.if ${FLAVOR:L:Mhesiod}
CONFIGURE_ARGS+= --with-hesiod
.endif

.if ${FLAVOR:L:Mathena}
LIB_DEPENDS+=	Xaw3d::x11/Xaw3d
CONFIGURE_ARGS+= --with-x-toolkit=athena --with-toolkit-scroll-bars
.elif ${FLAVOR:L:Mlucid}
CONFIGURE_ARGS+= --with-x-toolkit=lucid --with-toolkit-scroll-bars
.elif ${FLAVOR:L:Mmotif}
USE_MOTIF=any
CONFIGURE_ARGS+= --with-x-toolkit=motif --with-toolkit-scroll-bars
.else
CONFIGURE_ARGS+= --with-x-toolkit=no
.endif

.if ${FLAVOR:L:Mx11}

.if !${FLAVOR:L:Mno_jpeg}
LIB_DEPENDS+= jpeg.62::graphics/jpeg
CONFIGURE_ARGS+= --with-jpeg
.endif

.if !${FLAVOR:L:Mno_png}
LIB_DEPENDS+= png.2::graphics/png
CONFIGURE_ARGS+= --with-png
.endif

.if !${FLAVOR:L:Mno_tiff}
LIB_DEPENDS+= tiff.35::graphics/tiff
CONFIGURE_ARGS+= --with-tiff
.endif
.endif
.endif

# Do NOT strip on install.  We will strip those things that can be
# stripped after install. (emacs crashes if stripped on an alpha)
# To do the job correctly temacs should be stripped, not emacs
# (which is created from temacs).
INSTALL_STRIP=
STRIP_PROGS=	emacsclient etags ctags b2m ebrowse
.if (${MACHINE_ARCH} != "alpha")
STRIP_PROGS+=	${DISTNAME}
.endif
STRIP_EXECS=	cvtmail digest-doc emacsserver fakemail hexl movemail \
		profile sorted-doc yow

post-install:
.for file in ${STRIP_PROGS}
	@strip ${PREFIX}/bin/${file}
.endfor
.for file in ${STRIP_EXECS}
	@strip ${PREFIX}/libexec/emacs/${VERSION}/${GCCARCH}/${file}
.endfor

.include <bsd.port.mk>
