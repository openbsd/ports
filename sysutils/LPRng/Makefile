# OpenBSD makefile for:	LPRng
# Version required:	3.5.1
# Date created:		2 Apr 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.5 1999/11/03 01:23:25 turan Exp $
#

BROKEN=			bad packing lists

DISTNAME=		LPRng-3.5.1
CATEGORIES=		sysutils print

MAINTAINER=		marc@openbsd.org

MASTER_SITES=		ftp://ftp.astart.com/pub/LPRng/LPRng/
EXTRACT_SUFX=		.tgz

NO_CDROM=		"To many copyrights/licences to verify destribution OK"

GNU_CONFIGURE=		yes
CONFIGURE_ARGS=		--with-lpddir=${PREFIX}/libexec
CONFIGURE_ARGS+=	--with-admindir=${PREFIX}/sbin

MAKEFILE=		Makefile.bsd

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
	${MKDIR} ${PREFIX}/share/doc/LPRng
	(cd ${WRKSRC}/HOWTO && ${INSTALL_DATA} ${HTMLFILES} \
		${PREFIX}/share/doc/LPRng )
	@cat ${PKGDIR}/MESSAGE

.include <bsd.port.mk>
