# OpenBSD makefile for:	LPRng
# Version required:	3.5.1
# Date created:		2 Apr 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.15 2000/10/22 15:58:59 espie Exp $
#

DISTNAME=		LPRng-3.6.12
CATEGORIES=		sysutils print
NEED_VERSION=		1.305

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.astart.com/pub/LPRng/LPRng/
EXTRACT_SUFX=		.tgz

NO_CDROM=		"To many copyrights/licences to verify destribution OK"

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=	--with-sbindir='$${DESTDIR}${PREFIX}/sbin' \
		--with-filterdir='$${DESTDIR}${PREFIX}/libexec/filters' \
		--with-lpd_conf_path='$${DESTDIR}${SYSCONFDIR}/lpd.conf' \
		--with-lpd_perms_path='$${DESTDIR}${SYSCONFDIR}/lpd.perms' \
		--with-printcap_path='$${DESTDIR}${SYSCONFDIR}/printcap'

MAKE_FILE=		Makefile.bsd

HTMLFILES=		LPRng-HOWTO-1.html LPRng-HOWTO-2.html \
			LPRng-HOWTO-3.html LPRng-HOWTO-4.html \
			LPRng-HOWTO-5.html LPRng-HOWTO-6.html \
			LPRng-HOWTO-7.html LPRng-HOWTO-8.html \
			LPRng-HOWTO-9.html LPRng-HOWTO-10.html \
			LPRng-HOWTO-11.html LPRng-HOWTO-12.html \
			LPRng-HOWTO-13.html LPRng-HOWTO-14.html \
			LPRng-HOWTO-15.html LPRng-HOWTO.html \
			LPRng.html bg.gif star1.gif

post-install:
	${INSTALL_DATA} ${WRKSRC}/lpd.conf ${PREFIX}/lib/lpd.conf-sample
	${INSTALL_DATA} ${WRKSRC}/lpd.perms ${PREFIX}/lib/lpd.perms-sample
	test -f /etc/lpd.conf || ${INSTALL_DATA} ${WRKSRC}/lpd.conf /etc
	test -f /etc/lpd.perms || ${INSTALL_DATA} ${WRKSRC}/lpd.perms /etc
	mkdir -p ${PREFIX}/share/doc/LPRng
	cd ${WRKSRC}/HOWTO && ${INSTALL_DATA} ${HTMLFILES} \
		${PREFIX}/share/doc/LPRng
	@cat ${PKGDIR}/MESSAGE

.include <bsd.port.mk>
