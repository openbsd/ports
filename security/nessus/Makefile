# $OpenBSD: Makefile,v 1.15 2000/08/05 01:25:32 matt Exp $

PKGNAME=	nessus-${VERS}

CATEGORIES=	security
NEED_VERSION=	1.316

VERS=		1.0.4

DIST_SUBDIR=	nessus-${VERS}

DISTFILES=	nessus-libraries-${VERS}${EXTRACT_SUFX} \
		libnasl-${VERS}${EXTRACT_SUFX} \
		nessus-core-${VERS}${EXTRACT_SUFX} \
		nessus-plugins-${VERS}${EXTRACT_SUFX}

NESSUS_DIRS=	${DISTFILES:S/-${VERS}${EXTRACT_SUFX}//g}

MASTER_SITES=	ftp://ftp.nessus.org/pub/nessus/nessus-${VERS}/src/ \
		ftp://ftp.gwdg.de/pub/linux/misc/nessus/nessus-${VERS}/src/ \
		ftp://cvs.nessus.org/pub/nessus/nessus-${VERS}/src/ \
		ftp://ftp.chg.ru/pub/security/nessus/nessus-${VERS}/src/ \
		ftp://ftp.sekure.net/pub/nessus/nessus-${VERS}/src/ \
		ftp://ftp.nectec.or.th/pub/mirrors/nessus/nessus-${VERS}/src/

MAINTAINER=	matt@openbsd.org

HOMEPAGE=	http://www.nessus.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=no_x11
FLAVOR?=

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--localstatedir=/var

.if empty(FLAVOR:L:Mno_x11)
LIB_DEPENDS=	gtk.1.2::x11/gtk+
.else
CONFIGURE_ARGS+=--disable-gtk
.endif

post-extract:
	@sed "s%y0y0y0%${NESSUS_DIRS}%g" \
		${FILESDIR}/Makefile > ${WRKSRC}Makefile
	@sed -e "s%y0y0y0%${NESSUS_DIRS}%g" -e "s%w00w00%${WRKSRC}%g" \
		${FILESDIR}/configure > ${WRKSRC}configure
	@sed -e "s%w00w00%${WRKSRC}%g" -e "s%@@VERS@@%${VERS}%g" \
		${FILESDIR}/nessus-config > ${WRKSRC}nessus-config
	@sed "s%w00w00%${WRKSRC}%g" \
		${FILESDIR}/nasl-config > ${WRKSRC}nasl-config
	@chmod 755 ${WRKSRC}*
	@(cd ${WRKSRC}nessus-libraries/include ; ln -s . nessus)
	@(cd ${WRKSRC}nessus-libraries/libpeks ; ln -s . peks)
	@(cd ${WRKSRC}nessus-libraries/libpcap-nessus ; ln -s . nessus)
	@(cd ${WRKSRC}libnasl/include ; ln -s . nessus)

# Convince nmap_wrapper.nes to build regardless of nmap's presence.
post-configure:
	@cp ${FILESDIR}/nmap.h ${WRKSRC}nessus-plugins/plugins/nmap_wrapper/
	@touch ${WRKSRC}nessus-plugins/plugins/nmap_wrapper/nmap_installed

pre-install:
	mkdir -p -m 755 ${PREFIX}/include/nessus

.include <bsd.port.mk>

