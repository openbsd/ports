# $OpenBSD: Makefile,v 1.9 2002/09/05 19:29:29 lebel Exp $

COMMENT=		"mailfilter to identify and mark spam"

DISTNAME=		Mail-SpamAssassin-2.41
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5

HOMEPAGE=		http://spamassassin.org

MAINTAINER=		Han Boetes <han@mijncomputer.nl>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/released/ \
			${MASTER_SITE_PERL_CPAN:=Mail/}

RUN_DEPENDS=		:p5-Net-DNS-*:net/p5-Net-DNS \
			:p5-Time-HiRes-*:devel/p5-Time-HiRes \
			:p5-HTML-Parser-*:www/p5-HTML-Parser \
			:procmail-*:mail/procmail

CONFIGURE_STYLE=	perl

# regress insists on creating files in $HOME
PORTHOME=		${WRKDIR}/temp-home

FAQS=	${FILESDIR}/OpenBSD-SpamAssassin-mini-howto.html
DOCS=	README procmailrc.example \
	sample-nonspam.txt sample-spam.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin
	${INSTALL_DATA} ${FAQS} ${PREFIX}/share/doc/SpamAssassin
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/SpamAssassin

pre-regress:
	mkdir -p ${PORTHOME}

.include <bsd.port.mk>
