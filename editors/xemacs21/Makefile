# $OpenBSD: Makefile,v 1.7 2001/03/01 21:20:15 naddy Exp $

# 
# Description
#

VERSION=		21.1.14
DISTNAME=		xemacs-${VERSION}
CATEGORIES=     	editors
NEED_VERSION=		1.353

HOMEPAGE=		http://www.xemacs.org/

# where to send bitches about this port
MAINTAINER=		Jean-Yves Burlett <jean-yves@burlett.org>

# GNU GPL License
# PERMIT_PACKAGE_CDROM=	??? # depends on flavors (compface), see below
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

# where the source files and patches can be fetched
MASTER_SITES= 	ftp://ftp.xemacs.org/pub/xemacs/xemacs-21.1/ \
		ftp://ftp.oleane.net/pub/xemacs/xemacs-21.1/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/xemacs-21.1/ \
		ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/ftp.xemacs.org/xemacs/xemacs-21.1/ \
		ftp://ftp.usyd.edu.au/pub/Xemacs/xemacs-21.1/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/xemacs-21.1/ \
		ftp://ftp.th-darmstadt.de/pub/editors/xemacs/xemacs-21.1/

# Dependencies are very flavors-specific, you have
# to select a flavor set to know them

# build/configuration variables

# XEmacs symlinks a lot of files in its source tree
# preventing safe SEPARATE_BUILD
# (In facts, files modified in the source tree
# are not platform-specific (elisp bytecode) but
# you cannot build the package on different systems
# sharing the same ports tree w/o risking race
# problems (yes, building over nfs is stupid but...)) 
# (there are flavors (mule) issues too)
# Lots of configure.in changes are needed to restore
# a more logical behaviour (eech)
# Therefore, this is commented out for now:
# SEPARATE_BUILD=		simple

USE_GMAKE=		Yes

# 'configure.in' modified to generate a 'configure'
# that knows about curses really being ncurses

CONFIGURE_STYLE=	autoconf old dest

CONFIGURE_ARGS+=	--with-gnu-make \
			--gung-ho \
			--infodir='$${DESTDIR}${PREFIX}/info' \
			--infopath='${LOCALBASE}/info:/usr/share/info' \
			--site-prefixes='${LOCALBASE}:/usr' \
			--without-ldap \
			--without-cde \
			--without-offix \
			--without-dragndrop \
			--without-gpm \
			--without-tooltalk \
			--with-sound=no \
			--without-wnn6
			
# there is not (yet) bsd sound support in XEmacs
# XEmacs does not work with OpenLDAP 2.0.7 (linking problem)

FAKE_FLAGS=	prefix='$${WRKINST}$${DESTDIR}${PREFIX}' \
		infodir='$${WRKINST}$${DESTDIR}${PREFIX}/info'

####

# Arch string for configure
# copied from emacs and xemacs20 ports

.if ${MACHINE} == "arc" || ${MACHINE} == "pmax"
M_ARCH=         mipsel
.else
M_ARCH=         ${MACHINE_ARCH}
.endif
GCCARCH=        ${M_ARCH}-unknown-openbsd${OSREV}

CONFIGURE_ARGS+=	${GCCARCH}
SUBST_VARS=	GCCARCH

#### Flavors

# generic flavors
FLAVORS=	mule clashdetect gdbm canna wnn

# X11 Related
FLAVORS+=	no_x11 tiff no_png jpeg motif compface

FLAVOR?=

#
# X11-related
#

.if ${FLAVOR:L:Mno_x11}

CONFIGURE_ARGS+=--without-x11

. if ${FLAVOR:L:Mno_png} || \
    ${FLAVOR:L:Mjpeg} || \
    ${FLAVOR:L:Mmotif} || \
    ${FLAVOR:L:Mtiff} || \
    ${FLAVOR:L:Mcompface}
.BEGIN:
	@echo "You cannot use X11-related flavors with a non-X11 flavor"
	@exit 1
. endif

.else

### X11-dependent flavors
USE_X11=	Yes

CONFIGURE_ARGS+=	--with-menubars=lucid

. if ${FLAVOR:L:Mmotif}
NEED_MOTIF=	Yes
CONFIGURE_ARGS+=--with-scrollbars=motif \
		--with-dialogs=motif
. else
CONFIGURE_ARGS+=--with-scrollbars=lucid \
		--with-dialogs=athena3d
. endif

. if ${FLAVOR:L:Mjpeg}
LIB_DEPENDS+=	jpeg.62::graphics/jpeg
CONFIGURE_ARGS+=--with-jpeg
. else
CONFIGURE_ARGS+=--without-jpeg
. endif

. if !${FLAVOR:L:Mno_png}
LIB_DEPENDS+=	png.1.::graphics/png
CONFIGURE_ARGS+=--with-png
. else
CONFIGURE_ARGS+=--without-png
. endif

. if ${FLAVOR:L:Mtiff}
LIB_DEPENDS+=	tiff.35::graphics/tiff
CONFIGURE_ARGS+=--with-tiff
. else
CONFIGURE_ARGS+=--without-tiff
. endif

. if ${FLAVOR:L:Mcompface}

# compface statically linked -> license issues
PERMIT_PACKAGE_CDROM=   "No Fee"
PERMIT_DISTFILES_CDROM=	"No Fee"
BUILD_DEPENDS+=  ${LOCALBASE}/lib/libcompface.a::graphics/compface
CONFIGURE_ARGS+=--with-xface
. else
CONFIGURE_ARGS+=--with-xface=no
. endif

. if ${FLAVOR:L:Mmule}
CONFIGURE_ARGS+=	--with-xim=xlib
# prevents XEmacs from using motif's XIM which coredumps a lot
. endif

### end of X11 dependant flavors
.endif

#
# GENERAL FLAVORS
#

.if ${FLAVOR:L:Mgdbm}
LIB_DEPENDS+=	gdbm.2::databases/gdbm
CONFIGURE_ARGS+=--with-database=berkdb,gnudbm
.else
CONFIGURE_ARGS+=--with-database=berkdb
.endif

#
# MULE (MUlti Lingual Emacs) RELATED 
# I18N
#

.if ${FLAVOR:L:Mmule}
CONFIGURE_ARGS+=--with-mule

. if ${FLAVOR:L:Mcanna}
LIB_DEPENDS+=	canna16::japanese/canna
CONFIGURE_ARGS+=--with-canna
. else
CONFIGURE_ARGS+=--with-canna=no
. endif

. if ${FLAVOR:L:Mwnn}
BUILD_DEPENDS+= ${LOCALBASE}/lib/libwnn.a::japanese/Wnn
CONFIGURE_ARGS+=--with-wnn
. else
CONFIGURE_ARGS+=--with-wnn=no
. endif

.else

. if ${FLAVOR:L:Mcanna} || ${FLAVOR:L:Mwnn}
.BEGIN:
	@echo "You cannot use MULE-dependant flavors without MULE support"
	@exit 1
. endif

CONFIGURE_ARGS+=--with-mule=no \
		--with-canna=no \
		--with-wnn=no
.endif

# Clash-detection flavor needs LOCKDIR to be set to the path
# of the directory where clash detection lockfiles will be put.
# Some people dislikes this feature because anybody able to read
# this directory can see what other people are working on.
# W/o this feature, clash-detection still occur using lockfiles present 
# in the same directory as the file being edited (.#files#) but, in
# this case, clash detection won't work well with symlinked files.

.if ${FLAVOR:L:Mclashdetect} 
. if defined(LOCKDIR)
CONFIGURE_ARGS+=--with-clash-detection --lockdir='$${LOCKDIR}'
. else
.BEGIN:
	@echo "You need to set LOCKDIR to use clashdetect"
	@exit 1
. endif
.endif

#
# license-related
#

.if !defined(PERMIT_PACKAGE_CDROM)
PERMIT_PACKAGE_CDROM=	Yes
.endif

.if !defined(PERMIT_DISTFILES_CDROM)
PERMIT_DISTFILES_CDROM=	Yes
.endif

#######
.if (${MACHINE_ARCH} != "alpha")
STRIP_PROGS+=   ${DISTNAME}
.endif
STRIP_EXECS=    cvtmail digest-doc fakemail gnuserv hexl make-docfile \
		make-path mmencode movemail profile sorted-doc wakeup yow
STRIP_PROGS=	gnuclient b2m ctags etags ootags

post-install:
# Stripping
.for file in ${STRIP_PROGS}
	strip ${PREFIX}/bin/${file}
.endfor
.for file in ${STRIP_EXECS}
	strip ${PREFIX}/lib/${DISTNAME}/${GCCARCH}/${file}
.endfor
.if !defined(LOCKDIR)
	@rm -rf ${PREFIX}/lib/xemacs
.endif
	
.include <bsd.port.mk>
