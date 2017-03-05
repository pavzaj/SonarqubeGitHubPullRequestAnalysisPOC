using NUnit.Framework;

namespace POCLibrary.Tests
{
    [TestFixture()]
    public class Class1Tests
    {
        [Test()]
        public void funcTest()
        {
            Assert.AreEqual(1, new Class1().func());
        }
    }
}