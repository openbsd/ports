# $OpenBSD: Makefile,v 1.27 2002/05/25 10:38:58 reinhard Exp $

COMMENT=	"network security scanner"

PKGNAME=	nessus-${VERS}
CATEGORIES=	security
NEED_VERSION=	1.527

VERS=		1.2.0

DIST_SUBDIR=	nessus

DISTFILES=	nessus-libraries-${VERS}${EXTRACT_SUFX} \
		libnasl-${VERS}${EXTRACT_SUFX} \
		nessus-core-${VERS}${EXTRACT_SUFX} \
		nessus-plugins-${VERS}${EXTRACT_SUFX}

NESSUS_DIRS=	${DISTFILES:S/-${VERS}${EXTRACT_SUFX}//g}

MASTER_SITES=	ftp://ftp.nessus.org/pub/nessus/nessus-${VERS}/src/ \
		ftp://mirror.arc.nasa.gov/pub/tools/nessus/nessus-${VERS}/src/ \
		ftp://ftp.gwdg.de/pub/linux/misc/nessus/nessus-${VERS}/src/ \
		ftp://nessus.via.ecp.fr/nessus/nessus-${VERS}/src/ \
		ftp://sunsite.cnlab-switch.ch/mirror/nessus/nessus-${VERS}/src/ \
		ftp://ftp.chg.ru/pub/security/nessus/nessus-${VERS}/src/ \
		ftp://ftp.sekure.net/pub/nessus/nessus-${VERS}/src/ \
		ftp://ftp.nectec.or.th/pub/mirrors/nessus/nessus-${VERS}/src/ \
		ftp://ftp.pt.nessus.org/pub/nessus/nessus-${VERS}/src/ \
		ftp://ftp.au.nessus.org/pub/nessus/nessus-${VERS}/src/ \
		ftp://ftp.stuff.ca/pub/nessus/nessus-${VERS}/src/src/ \
		ftp://ftp.at.nessus.org/pub/nessus/nessus-${VERS}/src/ \
		ftp://ftp.linux.org.tr/pub/nessus/nessus-${VERS}/src/ \
		ftp://cvs.nessus.org/pub/nessus/nessus-${VERS}/src/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

HOMEPAGE=	http://www.nessus.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes

FLAVORS=no_x11
FLAVOR?=

# Can't do CONFIGURE_STYLE=autoconf because of configure wrapper
# that builds each tarball in succession.
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/nessus-core \
    ${WRKSRC}/nessus-plugins ${WRKSRC}/libnasl ${WRKSRC}/nessus-libraries
CONFIGURE_ARGS+=--localstatedir=/var --disable-nessuspcap --sharedstatedir=/var

.if empty(FLAVOR:L:Mno_x11)
LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+
.else
CONFIGURE_ARGS+=--disable-gtk
.endif

post-extract:
	@sed 's%@@NESSUS_DIRS@@%${NESSUS_DIRS}%g' \
		${FILESDIR}/Makefile > ${WRKSRC}Makefile
	@sed -e 's%@@NESSUS_DIRS@@%${NESSUS_DIRS}%g' \
		-e 's%@@WRKSRC@@%${WRKSRC}%g' \
		${FILESDIR}/configure > ${WRKSRC}configure
	@sed -e 's%@@WRKSRC@@%${WRKSRC}%g' -e 's%@@VERS@@%${VERS}%g' \
		-e 's%@@PREFIX@@%${PREFIX}%g' \
		${FILESDIR}/nessus-config > ${WRKSRC}nessus-config
	@sed 's%@@WRKSRC@@%${WRKSRC}%g' \
		${FILESDIR}/nasl-config > ${WRKSRC}nasl-config
	@${CHMOD} 755 ${WRKSRC}*
	@(cd ${WRKSRC}nessus-libraries/include ; ln -s . nessus)
	@(cd ${WRKSRC}libnasl/include ; ln -s . nessus)

# Convince nmap_wrapper.nes to build regardless of nmap's presence.
post-configure:
	@sed 's%@@PREFIX@@%${TRUEPREFIX}%g' ${FILESDIR}/nmap.h \
		>${WRKSRC}nessus-plugins/plugins/nmap_wrapper/nmap.h
	@touch ${WRKSRC}nessus-plugins/plugins/nmap_wrapper/nmap_installed

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/nessus

post-install:
	@${STRIP} ${PREFIX}/bin/{nasl,nessus,nessus-mkrand} ${PREFIX}/sbin/nessusd

.include <bsd.port.mk>
