# $OpenBSD: Makefile,v 1.19 2003/04/24 18:21:26 lebel Exp $

COMMENT=		"heavily customizable and extensible editor"

VERSION=		21.4.12
DISTNAME=		xemacs-${VERSION}
CATEGORIES=     	editors

HOMEPAGE=		http://www.xemacs.org/

# where to send bitches about this port
MAINTAINER=		Jean-Yves Burlett <jean-yves@burlett.org>

# GNU GPL License
# PERMIT_PACKAGE_CDROM=	??? # depends on flavors (compface), see below
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

# where the source files and patches can be fetched
MASTER_SITES= 	ftp://ftp.xemacs.org/pub/xemacs/xemacs-21.4/ \
		ftp://ftp.oleane.net/pub/xemacs/xemacs-21.4/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/xemacs-21.4/ \
		ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/ftp.xemacs.org/xemacs/xemacs-21.4/ \
		ftp://ftp.usyd.edu.au/pub/Xemacs/xemacs-21.4/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/xemacs-21.4/ \
		ftp://ftp.th-darmstadt.de/pub/editors/xemacs/xemacs-21.4/ \
      		ftp://ftp.funet.fi/pub/mirrors/ftp.xemacs.org/pub/tux/xemacs/xemacs-21.4/

# Dependencies are very flavors-specific, you have
# to select a flavor set to know them

# build/configuration variables

# this one is not "toggle-able" in the configure script
MODULES=	gettext

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

#USE_GMAKE=		Yes

# 'configure.in' modified to generate a 'configure'
# that knows about curses really being ncurses

CONFIGURE_STYLE=	autoconf old dest
CONFIGURE_ARGS+=	--infodir='$${DESTDIR}${PREFIX}/info/${DISTNAME}' \
			--infopath='${LOCALBASE}/info/${DISTNAME}:${LOCALBASE}/info:usr/share/info' \
			--site-prefixes='${LOCALBASE}:/usr' \
			--without-ldap \
			--without-postgresql \
			--without-cde \
			--without-offix \
			--without-dragndrop \
			--without-gpm \
			--with-msw=no \
			--without-tooltalk \
			--with-sound=no \
			--without-wnn6 \
			--without-gtk \
			--without-gnome \
			--with-database=berkdb \
			--with-file-coding=yes \
			--with-system-malloc \
			--pdump
			
# there is not (yet) bsd sound support in XEmacs
# XEmacs does not work with OpenLDAP (linking problem, 
# will try to fix if somebody asks)

FAKE_FLAGS=	prefix='$${WRKINST}$${DESTDIR}${PREFIX}' \
		infodir='$${WRKINST}$${DESTDIR}${PREFIX}/info/${DISTNAME}'

####

# Arch string for configure
# copied from emacs and xemacs20 ports

GCCARCH=        ${MACHINE_ARCH}-unknown-openbsd${OSREV}

CONFIGURE_ARGS+=	${GCCARCH}
SUBST_VARS=	GCCARCH

#### Flavors

# generic flavors
FLAVORS=	mule canna wnn

# X11 Related
FLAVORS+=	no_x11 compface

FLAVOR?=

#
# X11-related
#

.if ${FLAVOR:L:Mno_x11}

CONFIGURE_ARGS+=--without-x11

. if ${FLAVOR:L:Mcompface}
ERRORS+= "Fatal: You cannot use X11-related flavors with a non-X11 flavor"
. endif

.else

### X11-dependent flavors
USE_X11=	Yes

CONFIGURE_ARGS+=	--with-menubars=lucid

CONFIGURE_ARGS+=--with-scrollbars=lucid \
		--with-dialogs=athena \
		--with-widgets=athena

LIB_DEPENDS+=	jpeg.62::graphics/jpeg
CONFIGURE_ARGS+=--with-jpeg
LIB_DEPENDS+=	png.2.::graphics/png
CONFIGURE_ARGS+=--with-png \
		--site-includes="${LOCALBASE}/include/libpng"

LIB_DEPENDS+=	tiff.35::graphics/tiff
CONFIGURE_ARGS+=--with-tiff

. if ${FLAVOR:L:Mcompface}

# compface statically linked -> license issues
PERMIT_PACKAGE_CDROM=   "No Fee"
PERMIT_DISTFILES_CDROM=	"No Fee"
BUILD_DEPENDS+=  ::graphics/compface
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
BUILD_DEPENDS+= ::japanese/Wnn
CONFIGURE_ARGS+=--with-wnn
. else
CONFIGURE_ARGS+=--with-wnn=no
. endif

.else

. if ${FLAVOR:L:Mcanna} || ${FLAVOR:L:Mwnn}
ERRORS+= "Fatal: You cannot use MULE-dependant flavors without MULE support"
. endif

CONFIGURE_ARGS+=--with-mule=no \
		--with-canna=no \
		--with-wnn=no
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
STRIP_EXECS=    cvtmail digest-doc fakemail gnuserv hexl make-docfile \
		mmencode movemail profile sorted-doc wakeup yow
STRIP_PROGS=	${DISTNAME} gnuclient xemacs-b2m xemacs-ctags \
		xemacs-etags ootags

post-install:
# Stripping
.for file in ${STRIP_PROGS}
	@strip ${PREFIX}/bin/${file}
.endfor
.for file in ${STRIP_EXECS}
	@strip ${PREFIX}/lib/${DISTNAME}/${GCCARCH}/${file}
.endfor
.if !defined(LOCKDIR)
	@rm -rf ${PREFIX}/lib/xemacs
.endif

.include <bsd.port.mk>
