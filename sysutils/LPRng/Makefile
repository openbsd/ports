# $OpenBSD: Makefile,v 1.20 2002/09/28 01:20:43 pvalchev Exp $

BROKEN=		"outdated and with possible security holes"

COMMENT=	"enhanced printer spooler"

DISTNAME=	LPRng-3.7.4
CATEGORIES=	sysutils print
NEED_VERSION=	1.403
MASTER_SITES=	ftp://ftp.astart.com/pub/LPRng/LPRng/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Jeff Bachtel <jeff@cepheid.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gdbm.2::databases/gdbm

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-sbindir=${PREFIX}/sbin \
		--with-filterdir=${PREFIX}/libexec/filters \
		--with-lpd_conf_path=${SYSCONFDIR}/LPRng/lpd.conf \
		--with-lpd_perms_path=${SYSCONFDIR}/LPRng/lpd.perms \
		--with-printcap_path=${SYSCONFDIR}/printcap \
		--with-cppopts=-I${LOCALBASE}/include \
		--with-ldopts=-L${LOCALBASE}/lib

FAKE_FLAGS=	DESTDIR=${WRKINST} POSTINSTALL=NO prefix=${TRUEPREFIX} \
		FILTER_DIR=${TRUEPREFIX}/libexec/filters \
		LPD_PERMS_PATH=${TRUEPREFIX}/etc/LPRng/lpd.perms \
		LPD_CONF_PATH=${TRUEPREFIX}/etc/LPRng/lpd.conf \
		PRINTCAP_PATH=${TRUEPREFIX}/etc/LPRng/printcap

HTMLFILES=	LPRng-HOWTO.html REDIRECT.LPRng.html \
		LPRng.html links.html LPRng.jpg LPRngT-S.jpg \
		lprng-small.png LPRngLOGO100x30.gif \
		LPRng_20logo.gif lprngtool.png \
		LPRngLOGO2.gif bg.gif star1.gif LPRngLOGO334x100.gif \
		linkbanner.gif topbanner.gif LPRngT-L.jpg lisa2000.jpg

# we don't trust LPRng's (pre|post)install scripts
pre-fake:
	mkdir -p ${WRKINST}/etc && mkdir -p ${WRKINST}/etc/LPRng; \
	cp ${WRKSRC}/lpd.conf ${WRKSRC}/lpd.perms ${WRKINST}/etc/LPRng; \
	cp ${WRKSRC}/printcap.in ${WRKINST}/etc/LPRng/printcap

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/LPRng
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/LPRng
	cd ${WRKSRC}/HOWTO && ${INSTALL_DATA} ${HTMLFILES} \
		${PREFIX}/share/doc/LPRng
.for i in lpd.conf lpd.perms printcap
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/LPRng/$i ${PREFIX}/share/examples/LPRng
.endfor

.include <bsd.port.mk>
