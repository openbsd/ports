# OpenBSD makefile for:	magicpoint
# Version required:	1.07a
# Date created:		July 13 1999
# Whom:			Angelos D. Keromytis
#
# $Id: Makefile,v 1.14 2000/10/22 15:42:47 espie Exp $
# $OpenBSD: Makefile,v 1.14 2000/10/22 15:42:47 espie Exp $
#

DISTNAME=	magicpoint-1.07a
# question is for localized (i.e. Japanese) version
PKGNAME?=	magicpoint-1.07a
CATEGORIES=	misc productivity
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftp.mew.org/pub/MagicPoint/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# plus sign is for localized (i.e. Japanese) version
LIB_DEPENDS+=	ttf.1::print/freetype \
		png.1::graphics/png

CONFIGURE_STYLE=imake gnu
CONFIGURE_ARGS=	--disable-vflib

post-configure:
	cd ${WRKSRC}/contrib/xmindpath; ./configure --prefix='$${DESTDIR}${PREFIX}'

post-build:
	cd ${WRKSRC}/contrib/xmindpath; make

MAN1=	mgp.1 mgp2ps.1 mgpembed.1 mgpnet.1 xwintoppm.1 xmindpath.1

DOCS=	COPYRIGHT COPYRIGHT.jp README README.fonts README.fonts.jp \
	SYNTAX TODO.jp USAGE USAGE.jp
SAMPLES=	README README.jp ascii.mgp cloud.jpg dad.eps dad.jpg dns.mgp \
		default.mgp gradation.mgp mgp-old1.jpg mgp-old2.jpg \
		mgp-old3.jpg mgp1.jpg mgp2.jpg mgp3.jpg sample.mgp \
		tutorial.mgp v6.mgp v6header.eps v6header.jpg
SAMPLES=	README README.jp cloud.jpg dad.eps dad.jpg default.mgp \
		dns-jp.mgp embed-jp.mgp embed.mgp gradation-jp.mgp \
		gradation.mgp mgp-old1.jpg mgp-old2.jpg mgp-old3.jpg \
		mgp1.jpg mgp2.jpg mgp3.jpg mgp3.xbm mgprc-sample \
		multilingual.mgp sample-fr.mgp sample-jp.mgp sample.mgp \
		sendmail6-jp.mgp sendmail6.mgp tutorial-jp.mgp tutorial.mgp \
		v6-jp.mgp v6.mgp v6header.eps v6header.jpg

# NOTE: there are some discussions/twists in gzip'ing xmindpath.1.
post-install:
	(cd ${WRKSRC}/contrib/xmindpath; make install)
.if !defined(NOPORTDOCS)
	mkdir -p ${PREFIX}/share/doc/mgp
	for i in $(DOCS); do \
		${INSTALL_DATA} ${WRKSRC}/$$i ${PREFIX}/share/doc/mgp; \
	done
	mkdir -p ${PREFIX}/share/doc/mgp/sample
	for i in $(SAMPLES); do \
		${INSTALL_DATA} ${WRKSRC}/sample/$$i ${PREFIX}/share/doc/mgp/sample; \
	done
.endif

.include <bsd.port.mk>
