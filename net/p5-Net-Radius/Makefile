# $OpenBSD: Makefile,v 1.1.1.1 2004/11/14 12:15:38 sturm Exp $

COMMENT=	"Perl interface to Radius"

DISTNAME=	Net-Radius-1.44
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net devel

MAINTAINER=	Alexander Bluhm <alexander_bluhm@genua.de>

# perl artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

DATADIR=	${PREFIX}/share/p5-Net-Radius
DOCDIR=		${PREFIX}/share/doc/p5-Net-Radius
DOCS=		README README.3COM README.VSA
EXDIR=		${PREFIX}/share/examples/p5-Net-Radius
EXAMPLES=	example-client.pl example-menu.pl example-unix.pl \
		example-yes.pl radius2ldap.pl tutorial.pl

post-install:
	${INSTALL_DATA_DIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/dictionary ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/dictionary.3com ${DATADIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
.for file in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCDIR}
.endfor
	${INSTALL_DATA_DIR} ${EXDIR}
.for file in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/examples/${file} ${EXDIR}
.endfor	

.include <bsd.port.mk>
