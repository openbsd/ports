# $OpenBSD: Makefile,v 1.16 2001/01/05 16:02:21 brad Exp $

BROKEN=		"installs files directly into /etc"

DISTNAME=		LPRng-3.6.12
CATEGORIES=		sysutils print
NEED_VERSION=		1.336
MASTER_SITES=		ftp://ftp.astart.com/pub/LPRng/LPRng/
EXTRACT_SUFX=		.tgz

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

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
