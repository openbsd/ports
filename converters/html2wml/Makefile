# $OpenBSD: Makefile,v 1.1.1.1 2001/03/30 22:36:12 avsm Exp $

COMMENT=	"on-the-fly HTML to WML conversion"

DISTNAME=       html2wml-0.4.0
CATEGORIES=     converters www perl5
NEED_VERSION=   1.378

MASTER_SITES=	http://maddingue.free.fr/techie/download/Html2Wml/
HOMEPAGE=	http://maddingue.free.fr/techie/html2wml.html

MAINTAINER=     Shell Hung <i@shellhung.org>

PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/LWP/UserAgent.pm::www/p5-libwww \
		${PERL_MODULES}/${ARCH}-openbsd/HTML/Parser.pm::www/p5-HTML-Parser \
		${PERL_MODULES}/${ARCH}-openbsd/XML/Parser.pm::textproc/p5-XML-Parser \
		${PERL_MODULES}/URI/URL.pm::www/p5-URI \
		${PERL_MODULES}/Text/Template.pm::textproc/p5-Text-Template
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=		Yes
NO_CONFIGURE=		Yes

DOC=	NEWS NOTES README TODO
DOCDIR=	${PREFIX}/share/doc/html2wml

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${DOCDIR}/t ${DOCDIR}/t/samples
	${INSTALL_MAN} ${WRKSRC}/doc/html2wml.man ${PREFIX}/man/man1/html2wml.1
.for i in ${DOC}
	${INSTALL_DATA} ${WRKSRC}/$i ${DOCDIR}
.endfor
	${INSTALL_DATA} ${WRKSRC}/t/*.html ${DOCDIR}/t
	${INSTALL_DATA} ${WRKSRC}/t/samples/*.* ${DOCDIR}/t/samples
	${INSTALL_SCRIPT} ${WRKSRC}/html2wml.cgi ${PREFIX}/bin/html2wml

.include <bsd.port.mk>
