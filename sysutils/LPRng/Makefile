# $OpenBSD: Makefile,v 1.34 2006/10/09 09:15:22 espie Exp $

COMMENT=	"enhanced printer spooler"

DISTNAME=	LPRng-3.8.21
PKGNAME=	${DISTNAME}p2
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

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-sbindir=${PREFIX}/sbin \
		--with-filterdir=${PREFIX}/libexec/filters \
		--with-lpd_conf_path=${CONFDIR}/lpd.conf \
		--with-lpd_perms_path=${CONFDIR}/lpd.perms \
		--with-printcap_path=${SYSCONFDIR}/printcap \
		--with-cppopts=-I${LOCALBASE}/include \
		--with-ldopts=-L${LOCALBASE}/lib \
		--disable-nls

CFLAGS+=	-Dlog=mylog
FAKE_FLAGS=	DESTDIR=${WRKINST} POSTINSTALL=NO prefix=${TRUEPREFIX} \
		MAN=${TRUEPREFIX}/man \
		FILTER_DIR=${TRUEPREFIX}/libexec/filters \
		LPD_PERMS_PATH=${TRUEPREFIX}${CONFDIR}/lpd.perms \
		LPD_CONF_PATH=${TRUEPREFIX}${CONFDIR}/lpd.conf \
		PRINTCAP_PATH=${TRUEPREFIX}${CONFDIR}/printcap

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
