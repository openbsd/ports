# Date created: 26 Apr. 2000
# Whom:		SUZUKI Hitoshi <sigh@kuzirabekon.econ.nagasaki-u.ac.jp>

DISTNAME=	kinput2-v3
MASTER_SITES=	ftp://ftp.sra.co.jp/pub/x11/kinput2/
CATEGORIES=	japanese x11
NEED_VERSION=   1.300

LICENSE_TYPE=	NOFEE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	sigh@kuzirabekon.econ.nagasaki-u.ac.jp

CONFIGURE_STYLE=imake
FLAVORS=	canna wnn
FLAVOR?=	wnn

PKGNAME=	ja-kinput2-3.0

.if ${FLAVOR:L:Mwnn}
BUILD_DEPENDS+=	${LOCALBASE}/lib/libwnn.a::japanese/Wnn
.endif
.if ${FLAVOR:L:Mcanna}
LIB_DEPENDS=	canna16::japanese/canna
.endif

PORT_DOCDIR=${PREFIX}/share/doc/kinput2

pre-configure:
	mv -f ${WRKSRC}/Kinput2.conf ${WRKSRC}/Kinput2.conf.org
	cp ${FILESDIR}/Kinput2.conf ${WRKSRC}/Kinput2.conf
.if ${FLAVOR:L:Mwnn}
	echo "#define UseWnn" >>${WRKSRC}/Kinput2.conf
.endif
.if ${FLAVOR:L:Mcanna}
	echo "#define UseCanna" >>${WRKSRC}/Kinput2.conf
.endif

post-install:
	-mkdir ${PREFIX}/share/doc/kinput2
	cp ${WRKSRC}/README ${PORT_DOCDIR}
	cp ${WRKSRC}/NEWS ${PORT_DOCDIR}
	@(cd ${WRKSRC}/doc; tar -cf - . | \
		(cd ${PORT_DOCDIR}; tar -xf -))
	@chown -R ${SHAREOWN}.${SHAREGRP} ${PORT_DOCDIR}

.include <bsd.port.mk>
