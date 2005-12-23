# $OpenBSD: Makefile,v 1.31 2005/12/23 19:54:17 mbalmer Exp $

COMMENT=	"enhanced printer spooler"

DISTNAME=	LPRng-3.8.21
PKGNAME=	${DISTNAME}p1
CATEGORIES=	sysutils print
SHARED_LIBS=	lpr	0.0

MASTER_SITES=	ftp://ftp.lprng.com/pub/LPRng/LPRng/ \
		ftp://sunsite.ualberta.ca/pub/Mirror/LPRng/ \
		ftp://ftp.mono.org/pub/LPRng/ 
EXTRACT_SUFX=	.tgz

# GPL / Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl util

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-sbindir=${PREFIX}/sbin \
		--with-filterdir=${PREFIX}/libexec/filters \
		--with-lpd_conf_path=${CONFDIR}/lpd.conf \
		--with-lpd_perms_path=${CONFDIR}/lpd.perms \
		--with-printcap_path=${SYSCONFDIR}/printcap \
		--with-cppopts=-I${LOCALBASE}/include \
		--with-ldopts=-L${LOCALBASE}/lib \
		--disable-nls

USE_LIBTOOL=	Yes

CFLAGS+=	-Dlog=mylog
FAKE_FLAGS=	DESTDIR=${WRKINST} POSTINSTALL=NO prefix=${TRUEPREFIX} \
		FILTER_DIR=${TRUEPREFIX}/libexec/filters \
		LPD_PERMS_PATH=${TRUEPREFIX}${CONFDIR}/lpd.perms \
		LPD_CONF_PATH=${TRUEPREFIX}${CONFDIR}/lpd.conf \
		PRINTCAP_PATH=${TRUEPREFIX}${CONFDIR}/printcap

PATCH_LIST=     ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
                patch-*

CONFDIR=	${SYSCONFDIR}/LPRng
HTMLFILES=	LPRng-HOWTO.html 

SUBST_VARS=	CONFDIR

# we don't trust LPRng's (pre|post)install scripts
pre-fake:
	mkdir -p ${WRKINST}${CONFDIR}
	cp ${WRKSRC}/lpd.conf ${WRKSRC}/lpd.perms ${WRKSRC}/printcap \
		${WRKINST}${CONFDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/LPRng
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/LPRng
	cd ${WRKSRC}/HOWTO && ${INSTALL_DATA} ${HTMLFILES} \
		${PREFIX}/share/doc/LPRng
.for i in lpd.conf lpd.perms printcap
	${INSTALL_DATA} ${WRKINST}${CONFDIR}/$i ${PREFIX}/share/examples/LPRng
.endfor

.include <bsd.port.mk>
