# Makefile for:         nessus
# Version required:     0.2
# Date created:         14 Mar 1999
# Whom:                 dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.10 2000/04/09 17:38:05 espie Exp $

PKGNAME=	nessus-${VERS}

CATEGORIES=	security
NEED_VERSION=	 1.230
FAKE=No

VERS=		0.98.3

DIST_SUBDIR=	${PKGNAME}

DISTFILES=	nessus-libraries-${VERS}${EXTRACT_SUFX} \
		libnasl-${VERS}${EXTRACT_SUFX} \
		nessus-core-${VERS}${EXTRACT_SUFX} \
		nessus-plugins-${VERS}${EXTRACT_SUFX}

NESSUS_DIRS=	${DISTFILES:S/-${VERS}${EXTRACT_SUFX}//g}

MASTER_SITES=	ftp://ftp.nessus.org/pub/nessus/nessus-${VERS}/ \
		ftp://ftp.gwdg.de/pub/linux/misc/nessus/nessus-${VERS}/ \
		ftp://cvs.nessus.org/pub/nessus/nessus-${VERS}/ \
		ftp://ftp.chg.ru/pub/security/nessus/nessus-${VERS}/ \
		ftp://ftp.sekure.net/pub/nessus/nessus-${VERS}/ \
		ftp://ftp.nectec.or.th/pub/mirrors/nessus/nessus-${VERS}/

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+

GNU_CONFIGURE=	Yes

CONFIGURE_ARGS+= --sharedstatedir=${PREFIX}/share --localstatedir=${PREFIX}/share

# GNU build environment gone horribly wrong. ugh.
post-extract:
	@sed "s%y0y0y0%${NESSUS_DIRS}%g" ${FILESDIR}/Makefile > ${WRKSRC}Makefile
	@sed -e "s%y0y0y0%${NESSUS_DIRS}%g" -e "s%w00w00%${WRKSRC}%g" \
		${FILESDIR}/configure > ${WRKSRC}configure
	@sed "s%w00w00%${WRKSRC}%g" ${FILESDIR}/nessus-config > ${WRKSRC}nessus-config
	@sed "s%w00w00%${WRKSRC}%g" ${FILESDIR}/nasl-config > ${WRKSRC}nasl-config
	@chmod 755 ${WRKSRC}*
	@(cd ${WRKSRC}nessus-libraries/include ; ln -s . nessus)
	@(cd ${WRKSRC}nessus-libraries/cipher ; ln -s . peks)
	@(cd ${WRKSRC}libnasl/include ; ln -s . nessus)

pre-install:
	mkdir -p -m 755 ${PREFIX}/include/nessus

.include <bsd.port.mk>
