# $OpenBSD: Makefile,v 1.9 2002/12/09 15:37:23 brad Exp $
# Original from A B <obsdfaq30@yahoo.com>

COMMENT=	"GNU editor: extensible, customizable, self documenting"

VERSION=	21.2
DISTNAME=	emacs-${VERSION}
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_GNU:=emacs/}

MAINTAINER=	Mark Grimes <mark@stateful.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	GCCARCH VERSION

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${GCCARCH}
CONFIGURE_ENV= CPPFLAGS="-I${LOCALBASE}/include \
			 -I${LOCALBASE}/include/libpng" \
	       LDFLAGS="-L${LOCALBASE}/lib"

# X11 flavors
FLAVORS=	no_x11 no_tiff no_png no_jpeg
# X toolkit styles
FLAVORS+=	athena lucid motif lesstif
# Misc options
FLAVORS+=	pop kerberos kerberos5 hesiod
# Default
FLAVOR?=

M_ARCH=		${MACHINE_ARCH}

GCCARCH=	${M_ARCH}-unknown-openbsd${OPSYS_VER}

# Bad flavor combinations
.if ${FLAVOR:L:Mno_x11}
.   if ${FLAVOR:L:Mno_jpeg} || ${FLAVOR:L:Mno_png} || ${FLAVOR:L:Mno_tiff} || ${FLAVOR:L:Mathena} || ${FLAVOR:L:Mlucid} || ${FLAVOR:L:Mmotif} || ${FLAVOR:L:Mlesstif}
ERRORS+="Fatal: bad flavor combination ${FLAVOR}"
.   endif
.endif
.if ${FLAVOR:L:Mathena}
.  if ${FLAVOR:L:Mlucid} || ${FLAVOR:L:Mmotif} || ${FLAVOR:L:Mlesstif}
ERRORS+="Fatal: bad flavor combination ${FLAVOR}"
.  endif
.endif
.if ${FLAVOR:L:Mlucid}
.  if ${FLAVOR:L:Mmotif} || ${FLAVOR:L:Mlesstif}
ERRORS+="Fatal: bad flavor combination ${FLAVOR}"
.  endif
.endif


.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x --without-jpeg --without-png \
	--without-tiff --without-xim
.else

USE_X11=Yes
CONFIGURE_ARGS+= --with-x
LIB_DEPENDS+= ungif.5::graphics/libungif

.  if ${FLAVOR:L:Mno_jpeg}
CONFIGURE_ARGS+= --without-jpeg
.  else
LIB_DEPENDS+= jpeg.62::graphics/jpeg
CONFIGURE_ARGS+= --with-jpeg
.  endif

.  if ${FLAVOR:L:Mno_png}
CONFIGURE_ARGS+= --without-png
.  else
LIB_DEPENDS+= png.2::graphics/png
CONFIGURE_ARGS+= --with-png
.  endif 

.  if ${FLAVOR:L:Mno_tiff}
CONFIGURE_ARGS+= --without-tiff
.  else
LIB_DEPENDS+= tiff.35::graphics/tiff
CONFIGURE_ARGS+= --with-tiff
.  endif

.  if ${FLAVOR:L:Mpop}
CONFIGURE_ARGS+= --with-pop
.  endif 

.  if ${FLAVOR:L:Mkerberos}
CONFIGURE_ARGS+= --with-kerberos
.  endif 

.  if ${FLAVOR:L:Mkerberos5}
CONFIGURE_ARGS+= --with-kerberos5
.  endif

.  if ${FLAVOR:L:Mhesiod}
CONFIGURE_ARGS+= --with-hesiod
.  endif

.  if ${FLAVOR:L:Mathena}
LIB_DEPENDS+=	Xaw3d::x11/Xaw3d
CONFIGURE_ARGS+= --with-x-toolkit=athena --with-toolkit-scroll-bars
.  elif ${FLAVOR:L:Mlucid}
CONFIGURE_ARGS+= --with-x-toolkit=lucid --with-toolkit-scroll-bars
.  elif ${FLAVOR:L:Mmotif} || ${FLAVOR:L:Mlesstif}
USE_MOTIF=any
CONFIGURE_ARGS+= --with-x-toolkit=motif --with-toolkit-scroll-bars
.  else
CONFIGURE_ARGS+= --with-x-toolkit=no
.  endif
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
