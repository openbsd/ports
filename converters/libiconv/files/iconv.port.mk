# $OpenBSD: iconv.port.mk,v 1.2 2001/09/24 17:17:02 brad Exp $

# The RUN_DEPENDS entry is to ensure libiconv is
# installed. This is needed so we have charset.alias
# on static archs.
# Typically installed in PREFIX/lib.
LIB_DEPENDS+=	iconv.2:libiconv-*:converters/libiconv
RUN_DEPENDS+=	:libiconv-*:converters/libiconv
