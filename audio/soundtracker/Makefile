# $OpenBSD: Makefile,v 1.5 2002/05/30 09:08:28 wcobb Exp $
# Uses pthreads

COMMENT=		"Music tracking tool for X11"

VERSION=		0.6.6
DISTNAME=		soundtracker-${VERSION}
CATEGORIES=		audio
NEED_VERSION=		1.504
HOMEPAGE=		http://www.soundtracker.org/

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

V=v0.6
MASTER_SITES=		http://www.soundtracker.org/dl/$V/ \
			http://mirror.csoft.org/soundtracker/

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+ \
			audiofile::devel/libaudiofile

MODULES=		gettext

FLAVORS=		gnome esd
FLAVOR?=

USE_X11=		Yes
CONFIGURE_STYLE=	gnu autoconf
CONFIGURE_ARGS+=	--with-audiofile-prefix=${LOCALBASE} \
			--disable-alsa \
			--disable-sgi \
			--disable-oss
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=	gnome.36,gnomesupport.0,gnomeui.46,art_lgpl.4::x11/gnome/libs
.else
CONFIGURE_ARGS+=	--disable-gnome
.endif

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=		esd.2::audio/esound
.else
CONFIGURE_ARGS+=	--disable-esd
.endif

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+=	--disable-assembler
.endif

DOCS=			FAQ NEWS README \
			doc/xi.txt doc/xm.txt

post-configure:
	cd ${WRKSRC}/po && cp -f Makefile.in Makefile

post-extract:
	@ln -s ${FILESDIR}/sun-input.c ${WRKSRC}/app/drivers
	@ln -s ${FILESDIR}/sun-output.c ${WRKSRC}/app/drivers

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/soundtracker
	cd ${WRKSRC} && \
	    ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/soundtracker

.include <bsd.port.mk>
