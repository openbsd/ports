# $OpenBSD: Makefile,v 1.22 2003/04/01 12:35:38 avsm Exp $

COMMENT=	"enhanced printer spooler"

DISTNAME=	LPRng-3.8.20
CATEGORIES=	sysutils print
MASTER_SITES=	ftp://ftp.lprng.com/pub/LPRng/LPRng/ \
		ftp://sunsite.ualberta.ca/pub/Mirror/LPRng/ \
		ftp://ftp.mono.org/pub/LPRng/ 
EXTRACT_SUFX=	.tgz

MAINTAINER=	Jeff Bachtel <jeff@cepheid.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gettext iconv
LIB_DEPENDS=	gdbm.2::databases/gdbm

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-sbindir=${PREFIX}/sbin \
		--with-filterdir=${PREFIX}/libexec/filters \
		--with-lpd_conf_path=${SYSCONFDIR}/LPRng/lpd.conf \
		--with-lpd_perms_path=${SYSCONFDIR}/LPRng/lpd.perms \
		--with-printcap_path=${SYSCONFDIR}/printcap \
		--with-cppopts=-I${LOCALBASE}/include \
		--with-ldopts=-L${LOCALBASE}/lib \
		--with-libiconv-prefix=${LOCALBASE} \
		--with-libintl-prefix=${LOCALBASE}

FAKE_FLAGS=	DESTDIR=${WRKINST} POSTINSTALL=NO prefix=${TRUEPREFIX} \
		FILTER_DIR=${TRUEPREFIX}/libexec/filters \
		LPD_PERMS_PATH=${TRUEPREFIX}/etc/LPRng/lpd.perms \
		LPD_CONF_PATH=${TRUEPREFIX}/etc/LPRng/lpd.conf \
		PRINTCAP_PATH=${TRUEPREFIX}/etc/LPRng/printcap

PATCH_LIST=     ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
                patch-*

HTMLFILES=	LPRng-HOWTO.html 

# we don't trust LPRng's (pre|post)install scripts
pre-fake:
	mkdir -p ${WRKINST}/etc && mkdir -p ${WRKINST}/etc/LPRng; \
	cp ${WRKSRC}/lpd.conf ${WRKSRC}/lpd.perms ${WRKINST}/etc/LPRng; \
	cp ${WRKSRC}/printcap ${WRKINST}/etc/LPRng/printcap

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/LPRng
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/LPRng
	cd ${WRKSRC}/HOWTO && ${INSTALL_DATA} ${HTMLFILES} \
		${PREFIX}/share/doc/LPRng
.for i in lpd.conf lpd.perms printcap
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/LPRng/$i ${PREFIX}/share/examples/LPRng
.endfor

.include <bsd.port.mk>
