# $OpenBSD: Makefile,v 1.1.1.1 2002/04/19 21:39:20 wilfried Exp $

COMMENT=		"mailfilter to identify and mark spam"

DISTNAME=		Mail-SpamAssassin-2.11
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5
NEED_VERSION=		1.515

HOMEPAGE=		http://spamassassin.org

MAINTAINER=		Han Boetes <han@mijncomputer.nl>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/released/ \
			${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Mail

RUN_DEPENDS=		:p5-Net-DNS-*:net/p5-Net-DNS

CONFIGURE_STYLE=	perl

FLAVORS=		no_procmail
FLAVOR?=

# regress insists on creating files in $HOME
PORTHOME=		${WRKDIR}/temp-home

.if ! ${FLAVOR:L:Mno_procmail}
RUN_DEPENDS+=		:procmail-*:mail/procmail
.endif

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
